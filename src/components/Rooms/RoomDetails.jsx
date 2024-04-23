import React, { useEffect, useState } from "react";
import { useParams } from "react-router-dom";

function RoomDetails() {
  let { idRoom } = useParams();
  const [roomDetails, setRoomDetails] = useState(null);
  const [loading, setLoading] = useState(false);

  const fetchRoomDetails = async (room) => {
    try {
      const response = await fetch(
        `http://HSF002LINUX/Web2/Project/api.php/Room?${encodeURIComponent(
          room
        )}`
      );
      const data = await response.json();
      // console.log(data);
      setFetchedRooms(data);
    } catch (error) {
      // Handle any errors
    }
  };
  useEffect(() => {
    setLoading(true);
    // Assume fetchRoomDetails is a function that fetches the room data from an API
    fetchRoomDetails(idRoom)
      .then((data) => {
        setRoomDetails(data);
        setLoading(false);
      })
      .catch((error) => {
        console.error("Error fetching room details:", error);
        setLoading(false);
      });
  }, [idRoom]); // This effect should run when idRoom changes

  if (loading) {
    return <div>Loading...</div>;
  }

  if (!roomDetails) {
    return <div>Room details not found.</div>;
  }

  // Render the room details
  return (
    <div>
      <h1>{roomDetails.name}</h1>
      {/* Other room details here */}
    </div>
  );
}

export default RoomDetails;
