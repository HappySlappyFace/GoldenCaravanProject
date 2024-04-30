import React, { useEffect, useState } from "react";
import { useParams, useNavigate, Link } from "react-router-dom";

const BookRoom = () => {
  const { idRoom } = useParams();
  const navigate = useNavigate();
  const [roomDetails, setRoomDetails] = useState({
    roomType: "",
    price: 0,
    imageUrl: "https://via.placeholder.com/500",
  });

  // Fetch room details from the server
  useEffect(() => {
    fetch(
      `http://localhost/Web2/Project/api.php/Room?room=${encodeURIComponent(
        idRoom
      )}`
    )
      .then((response) => response.json())
      .then((data) => {
        console.log(data[0].imageUrl);
        setRoomDetails({
          roomType: data[0].roomType,
          price: data[0].price,
          imgSrc: data[0].imageUrl || "https://via.placeholder.com/500", // Fallback image URL,
        });
      })
      .catch((error) => console.error("Error fetching room details:", error));
  }, [idRoom]);

  const handleBook = async () => {
    // POST request to backend to book the room
    // const requestBody = {
    //   roomId: roomDetails.idRoom,
    //   startDate: roomDetails.startDate,
    //   endDate: roomDetails.endDate,
    // };
    const formData = new FormData();
    formData.append("roomId", roomDetails.idRoom); // Replace with your hardcoded room ID
    formData.append("startDate", "2024-05-01"); // Replace with your hardcoded start date
    formData.append("endDate", "2024-05-07");
    try {
      // console.log(requestBody);
      const response = await fetch(
        `http://localhost/Web2/Project/booking.php`,
        {
          method: "POST",
          // headers: {
          //   "Content-Type": "application/json",
          // },
          body: formData,
          credentials: "include",
        }
      );
      if (response.status === 403) {
        navigate("/login");
        return;
      }
      if (response.ok) {
        navigate("/reservations"); // Navigate to the reservation list on success
      } else {
        throw new Error("Failed to create booking");
      }
    } catch (error) {
      console.error("Error booking room:", error);
    }
  };

  const handleCancel = () => {
    navigate("/"); // Navigate to the homepage
  };
  return (
    <div className="container">
      <div className="card">
        <div className="card-image">
          <figure className="image is-4by3">
            <img
              src={roomDetails.imageUrl}
              alt="Room Image"
              key={roomDetails.imageUrl}
              onError={(e) =>
                (e.target.src = "https://via.placeholder.com/500")
              }
            />
          </figure>
        </div>
        <div className="card-content">
          <div className="media">
            <div className="media-content">
              <p className="title is-4">Book a Room</p>
              <p className="subtitle is-6">Room Type: {roomDetails.roomType}</p>
            </div>
          </div>

          <div className="content">
            Reservation Price: <strong>${roomDetails.price}</strong>
            <br />
            <button className="button is-primary" onClick={handleBook}>
              Book now
            </button>
            <button className="button is-light" onClick={handleCancel}>
              Cancel
            </button>
          </div>
        </div>
      </div>
    </div>
  );
};

export default BookRoom;
