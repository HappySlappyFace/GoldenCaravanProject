import React, { useEffect, useState } from "react";
import RoomsCard from "./RoomsCard";

function Body({ fetchedRooms }) {
  const [displayRooms, setDisplayRooms] = useState([]);

  useEffect(() => {
    // This effect will run every time `fetchedRooms` changes.
    setDisplayRooms(fetchedRooms);
    console.log(fetchedRooms);

    // Optionally, perform any additional logic when rooms update.
  }, [fetchedRooms]); // Dependency array includes `fetchedRooms`
  useEffect(() => {
    // This effect will run after the state is updated and the component re-renders
    console.log("displayRooms (updated):", displayRooms);
  }, [displayRooms]);

  return (
    <div className="container">
      <h1 className="title">Rooms</h1>
      <div className="columns is-multiline">
        {displayRooms.map((room) => (
          <div
            key={room.idRoom}
            className="column is-12-mobile is-6-tablet is-4-desktop is-3-widescreen"
          >
            <RoomsCard {...room} />
          </div>
        ))}
      </div>
    </div>
  );
}

export default Body;
