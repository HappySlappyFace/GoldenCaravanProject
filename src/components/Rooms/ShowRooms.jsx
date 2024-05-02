import React, { useEffect, useState } from "react";
import RoomsCard from "./RoomsCard";
import SkeletonCard from "./SkeletonCard";

function Body({ fetchedRooms }) {
  const [displayRooms, setDisplayRooms] = useState([]);
  const [isLoading, setIsLoading] = useState(false);

  useEffect(() => {
    if (fetchedRooms[0] == "Fetching") {
      setIsLoading(true);
    } else {
      setDisplayRooms(fetchedRooms);
      setIsLoading(false);
    }
  }, [fetchedRooms]);

  const skeletonCardsCount = 8;
  const skeletonCards = [...Array(skeletonCardsCount)].map((_, index) => (
    <div
      key={index}
      className="column is-12-mobile is-6-tablet is-4-desktop is-3-widescreen"
    >
      <SkeletonCard />
    </div>
  ));

  const spinnerWrapperStyles = {
    display: "flex",
    justifyContent: "center",
    alignItems: "center",
    height: "100%",
  };
  return (
    <div className="container">
      <h1 className="title">Rooms</h1>
      <div className="columns is-multiline">
        {isLoading
          ? skeletonCards
          : displayRooms.map((room) => (
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
