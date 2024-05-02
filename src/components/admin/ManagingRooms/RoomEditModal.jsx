import React, { useState, useEffect } from "react";

const RoomEditModal = ({ isActive, onClose, roomDetails, onSave, hotels }) => {
  const [locations, setLocations] = useState([]);
  const [isLoading, setIsLoading] = useState(false);
  const [room, setRoom] = useState({
    idRoom: "",
    idHotel: "",
    numberOfBeds: "1",
    status: "0",
    price: "",
    roomType: "Standard",
    imageUrl: "",
    idHotelPrefix: "01TN",
  });
  const FetchHotelFranchise = async () => {
    try {
      setIsLoading(true);
      const response = await fetch(
        `http://localhost/Web2/Project/api.php/Hotels`
      );
      // const response = await fetch(
      //   `http://localhost/Web2/Project/api.php/Hotels`
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
  };
  useEffect(() => {
    // If editing an existing room, populate the form, otherwise set defaults for a new room
    setRoom(
      roomDetails || {
        idRoom: "",
        idHotel: "",
        numberOfBeds: "1",
        status: "0",
        price: "",
        roomType: "Standard",
        imageUrl: "",
        idHotelPrefix: "01TN",
      }
    );
  }, [roomDetails, isActive]);

  const handleChange = (event) => {
    const { name, value } = event.target;
    setRoom((prevRoom) => ({ ...prevRoom, [name]: value }));
  };

  const handleSubmit = (event) => {
    event.preventDefault();
    onSave(room);
  };

  useEffect(() => {
    FetchHotelFranchise();
  }, []);

  return (
    <div className={`modal ${isActive ? "is-active" : ""}`}>
      <div className="modal-background" onClick={onClose}></div>
      <div className="modal-card">
        <header className="modal-card-head">
          <p className="modal-card-title">
            {roomDetails ? "Edit Room" : "Add New Room"}
          </p>
          <button
            className="delete"
            aria-label="close"
            onClick={onClose}
          ></button>
        </header>
        <section className="modal-card-body">
          <form onSubmit={handleSubmit}>
            {/* Include hotel selection dropdown */}
            <div className="field">
              <label className="label">Hotel</label>
              <div className="control">
                <div className="select">
                  <select
                    name="idHotel"
                    value={room.idHotel}
                    onChange={handleChange}
                    required
                  >
                    <option value="">Select Hotel</option>
                    {locations.map((hotel) => (
                      <option key={hotel.idHotel} value={hotel.idHotel}>
                        {hotel.name}
                      </option>
                    ))}
                  </select>
                </div>
              </div>
            </div>
            <div className="select is-fullwidth">
              <select
                name="roomType"
                value={room.roomType}
                onChange={handleChange}
                required
              >
                <option value="">Select Room Type</option>
                <option value="Standard">Standard</option>
                <option value="Deluxe">Deluxe</option>
                <option value="Suite">Suite</option>
              </select>
            </div>
            <div className="field">
              <label className="label">Number of Beds</label>
              <div className="control">
                <input
                  className="input"
                  type="number"
                  name="numberOfBeds"
                  value={room.numberOfBeds}
                  onChange={handleChange}
                  required
                />
              </div>
            </div>
            <div className="field">
              <label className="label">Price</label>
              <div className="control">
                <input
                  className="input"
                  type="text"
                  name="price"
                  value={room.price}
                  onChange={handleChange}
                  required
                />
              </div>
            </div>
            <div className="field">
              <label className="label">Image URL</label>
              <div className="control">
                <input
                  className="input"
                  type="url"
                  name="imageUrl"
                  value={room.imageUrl}
                  onChange={handleChange}
                />
              </div>
            </div>
            <div className="field">
              <label className="label">Status</label>
              <div className="control">
                <div className="select">
                  <select
                    name="status"
                    value={room.status}
                    onChange={handleChange}
                  >
                    <option value="1">Active</option>
                    <option value="0">Inactive</option>
                  </select>
                </div>
              </div>
            </div>
            <div className="field">
              <div className="control">
                <button type="submit" className="button is-link">
                  Save Changes
                </button>
              </div>
            </div>
          </form>
        </section>
      </div>
    </div>
  );
};

export default RoomEditModal;
