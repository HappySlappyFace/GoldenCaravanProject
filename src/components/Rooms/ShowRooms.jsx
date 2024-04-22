import React, { useEffect, useState } from "react";
import RoomsCard from "./RoomsCard";
import SkeletonCard from "./SkeletonCard"; // You need to create this component

function Body({ fetchedRooms }) {
  const [displayRooms, setDisplayRooms] = useState([]);
  const [isLoading, setIsLoading] = useState(false);

  useEffect(() => {
    if (fetchedRooms[0] == "Fetching") {
      // Trigger loading state
      setIsLoading(true);
    } else {
      // Data has been fetched, update displayRooms and turn off loading state
      setDisplayRooms(fetchedRooms);
      setIsLoading(false);
    }
  }, [fetchedRooms]);

  // Define how many skeleton cards you want to display
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
    height: "100%", // Make sure this covers the height of the card-image container
  };
  return (
    <div className="container">
      <h1 className="title">Rooms</h1>
      <div className="columns is-multiline">
        {isLoading
          ? skeletonCards // Render skeleton cards while loading
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
