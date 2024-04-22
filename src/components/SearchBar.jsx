import { useState } from "react";
// import debounce from "../methods.js";
import { useDebouncedCallback } from "use-debounce";
import "./SearchBar.scss";
import Flatpickr from "react-flatpickr";
import "flatpickr/dist/themes/airbnb.css";
import { useEffect } from "react";

function SearchBar({ setFetchedRooms }) {
  const [inputValues, setInputValues] = useState({
    city: "",
    checkInDate: "",
    checkOutDate: "",
    guests: "",
    rooms: "",
  });
  const [locations, setLocations] = useState([]);
  const [dateRange, setDateRange] = useState([new Date(), new Date()]);
  const [isLoading, setIsLoading] = useState(false);
  const [selectedLocation, setSelectedLocation] = useState(null);
  const [searchValue, setSearchValue] = useState(null);

  //to fetch the hotel franchise
  const handleUpdateValues = (value) => {
    setSearchValue(value);
    setInputValues((prev) => ({ ...prev, city: value }));
  };

  const handleUpdateValue = useDebouncedCallback(
    // function
    (value) => {
      handleUpdateValues(value);
    },
    // delay in ms
    300
  );

  // const handleUpdateValue = (value) =>
  //   debounce(handleUpdateValues(value), 1000);
  // console.log(searchValue);

  const FetchHotelFranchise = async (searchText) => {
    if (searchText.length >= 1) {
      try {
        setIsLoading(true);
        const response = await fetch(
          `http://HSF002LINUX/Web2/Project/api.php/Hotels?search=${encodeURIComponent(
            searchText
          )}`
        );
        // const response = await fetch(
        //   `http://HSF002LINUX/Web2/Project/api.php/Hotels`
        // );
        const data = await response.json();
        // console.log(data);
        setLocations(data);
        setIsLoading(false);
      } catch (error) {
        console.log("Failed to fetch locations");
        console.error("Failed to fetch locations", error);
        setLocations([]);
        setIsLoading(false);
      }
    }
  };

  useEffect(() => {
    searchValue && FetchHotelFranchise(searchValue);
  }, [searchValue]);

  //to fetch the hotel rooms
  const fetchRooms = async () => {
    // console.log(locations);
    setFetchedRooms(["Fetching"]);
    const formattedStartDate = dateRange[0].toISOString().split("T")[0];
    const formattedEndDate = dateRange[1]
      ? dateRange[1].toISOString().split("T")[0]
      : "";

    // If we have a selectedLocation, use its city attribute; otherwise, use an empty string or a default value
    const queryParams = new URLSearchParams({
      city: selectedLocation.city,
      checkInDate: formattedStartDate,
      checkOutDate: formattedEndDate,
      guests: inputValues.guests,
      rooms: inputValues.rooms,
    });

    try {
      const response = await fetch(
        `http://HSF002LINUX/Web2/Project/api.php/Rooms?${queryParams}`
      );
      // console.log(
      //   `http://HSF002LINUX/Web2/Project/api.php/Rooms?${queryParams}`
      // );
      const data = await response.json();
      // console.log(data);
      setFetchedRooms(data);
      // Handle the fetched room data
    } catch (error) {
      // Handle any errors
    }
  };

  //to update the date range in the Location field
  const handleLocationClick = (locationName) => {
    const location = locations.find((loc) => loc.name === locationName);
    if (location) {
      setInputValues({ ...inputValues, city: locationName });
      setSelectedLocation(location); // Save the full location object
    }
    setLocations([]);
  };

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setInputValues({ ...inputValues, [name]: value });
  };

  // Call FetchHotelFranchise when user stops typing
  // const debounceSearch = debounce(FetchHotelFranchise, 200);

  return (
    <div className="field has-addons search-container">
      <div className="control is-expanded field has-addons is-flex-direction-column">
        <input
          className="input"
          type="text"
          placeholder="Where to?"
          defaultValue={inputValues.city}
          onChange={(e) => {
            // setIsLoading(true);
            // setInputValues((prev) => ({ ...prev, city: e.target.value }));
            // debounceSearch(e.target.value);
            handleUpdateValue(e.target.value);
          }}
        />
        {locations.length > 0 && (
          <div className="dropdown is-active">
            <div className="dropdown-menu">
              <div className="dropdown-content">
                {locations.map((location) => (
                  <a
                    href="#"
                    className="dropdown-item"
                    key={location.idHotel}
                    onClick={() => handleLocationClick(location.name)}
                  >
                    {location.name}
                  </a>
                ))}
              </div>
            </div>
          </div>
        )}
      </div>
      <p className="control">
        <Flatpickr
          className="input"
          id="date-range"
          value={dateRange}
          onChange={setDateRange}
          options={{ mode: "range", minDate: "today" }}
        />
      </p>
      <p className="control">
        <input
          className="input"
          name="guests"
          type="number"
          placeholder="Guests"
          value={inputValues.guests}
          onChange={handleInputChange}
          min="1"
        />
      </p>
      <p className="control">
        <input
          className="input"
          name="rooms"
          type="number"
          placeholder="Rooms"
          value={inputValues.rooms}
          onChange={handleInputChange}
          min="1"
        />
      </p>
      <p className="control">
        <button
          className={`button is-primary ${isLoading ? "is-loading" : ""}`}
          onClick={fetchRooms}
          disabled={isLoading}
        >
          Search
        </button>
      </p>
    </div>
  );
}

export default SearchBar;
