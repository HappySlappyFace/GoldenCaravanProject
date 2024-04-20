import { useState } from "react";
import debounce from "../methods.js";
import "./SearchBar.scss";

function SearchBar() {
  const [inputValue, setInputValue] = useState("");
  const [locations, setLocations] = useState([]);
  const handleSearch = debounce(async (searchText) => {
    if (searchText.length > 2) {
      try {
        const response = await fetch(
          `http://HSF002LINUX/Web2/Project/api.php/Hotels?search=${encodeURIComponent(
            searchText
          )}`
        );
        // const response = await fetch(
        //   `http://HSF002LINUX/Web2/Project/api.php/Hotels`
        // );
        const data = await response.json();
        console.log(data);
        setLocations(data);
      } catch (error) {
        console.log("Failed to fetch locations");
        console.error("Failed to fetch locations", error);
        setLocations([]);
      }
    } else {
      setLocations([]);
    }
  }, 300);

  const handleLocationClick = (locationName) => {
    setInputValue(locationName);
    setLocations([]);
  };

  // Call handleSearch when user stops typing
  const debounceSearch = debounce(handleSearch, 300);

  return (
    <div className="field has-addons">
      <div className="control is-expanded field has-addons is-flex-direction-column">
        <input
          className="input"
          type="text"
          placeholder="Where to?"
          value={inputValue}
          onChange={(e) => {
            setInputValue(e.target.value);
            debounceSearch(e.target.value);
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
        <input className="input" type="date" placeholder="Check In" />
      </p>
      <p className="control">
        <input className="input" type="date" placeholder="Check Out" />
      </p>
      <p className="control">
        <input className="input" type="number" placeholder="Guests" min="1" />
      </p>
      <p className="control">
        <input className="input" type="number" placeholder="Rooms" min="1" />
      </p>
      <p className="control">
        <button className="button is-primary">Search</button>
      </p>
    </div>
  );
}

export default SearchBar;
