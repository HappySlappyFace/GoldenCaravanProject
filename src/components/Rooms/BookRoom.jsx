import React, { useEffect, useState } from "react";
import { useParams, useNavigate, Link } from "react-router-dom";

const BookRoom = () => {
  const { idRoom } = useParams();
  const navigate = useNavigate();
  const [totalPrice, setTotalPrice] = useState(0);
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
  const savedDate = JSON.parse(localStorage.getItem("bookingDate"));
  const startDate = new Date(savedDate[0]);
  const endDate = new Date(savedDate[1]);
  const timeDiff = endDate.getTime() - startDate.getTime();
  const days = Math.ceil(timeDiff / (1000 * 3600 * 24)) + 1;
  // console.log(days);

  // console.log(savedDate);
  const handleBook = async () => {
    const formData = new FormData();

    formData.append("roomId", idRoom);
    formData.append("startDate", savedDate[0]);
    formData.append("endDate", savedDate[1]);
    try {
      // console.log(requestBody);
      // console.log(`http://localhost/Web2/Project/booking.php`, {
      //   method: "POST",
      //   // headers: {
      //   //   "Content-Type": "application/json",
      //   // },
      //   body: formData,
      //   credentials: "include",
      // });
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
        navigate("/reservations");
      } else {
        throw new Error("Failed to create booking");
      }
    } catch (error) {
      console.error("Error booking room:", error);
    }
  };

  const handleCancel = () => {
    navigate("/");
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
            Reservation Price: <strong>${roomDetails.price * days}</strong>
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
