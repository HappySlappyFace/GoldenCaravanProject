import React, { useEffect, useState, useRef } from "react";
import { useParams } from "react-router-dom";
import RoomDetailsRenderer from "./RoomDetailsRenderer";
import RoomDetailsSkeleton from "./RoomDetailsSkeleton";

function RoomDetails() {
  let { idRoom } = useParams();
  const [roomDetails, setRoomDetails] = useState(null);
  const [loading, setLoading] = useState(false);
  const room = useRef(null);

  const fetchRoomDetails = async (room) => {
    try {
      const response = await fetch(
        `http://localhost/Web2/Project/api.php/Room?room=${encodeURIComponent(
          room
        )}`
      );

      const data = await response.json();
      // console.log(data[0]);
      // setRoomDetails(data[0]);
      return data[0];
    } catch (error) {
      // Handle any errors
    }
  };
  useEffect(() => {
    setLoading(true);
    // console.log(idRoom);
    fetchRoomDetails(idRoom)
      .then((data) => {
        setRoomDetails(data);
        setLoading(false);
      })
      .catch((error) => {
        console.error("Error fetching room details:", error);
        setLoading(false);
      });
  }, [idRoom]);

  useEffect(() => {
    // console.log(roomDetails);
    if (roomDetails) {
      document.title = `${roomDetails.idRoom} - Room Details`;
    }
  }, [roomDetails]);

  if (loading) {
    return <div>Loading...</div>;
  }

  if (!roomDetails) {
    return <div>Room details not found.</div>;
  }

  return (
    <>
      {loading ? (
        <RoomDetailsSkeleton />
      ) : (
        <RoomDetailsRenderer roomDetails={roomDetails} />
      )}
    </>
  );
}

export default RoomDetails;
