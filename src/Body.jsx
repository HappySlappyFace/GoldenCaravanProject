import { useState } from "react";
import TopSection from "./components/TopSection";
import SearchBar from "./components/SearchBar";
import ShowRooms from "./components/Rooms/ShowRooms";
function Body() {
  const [fetchedRooms, setFetchedRooms] = useState([]);
  const [currentPage, setCurrentPage] = useState("Home");

  return (
    <>
      {currentPage === "Home" && (
        <>
          <TopSection />
          <SearchBar setFetchedRooms={setFetchedRooms} />
          {fetchedRooms.length > 0 ? (
            <ShowRooms fetchedRooms={fetchedRooms} />
          ) : null}
        </>
      )}
      {currentPage == "Room" && <></>}
    </>
  );
}

export default Body;
