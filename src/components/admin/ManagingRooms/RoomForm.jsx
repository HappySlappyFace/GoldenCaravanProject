import React, { useState, useEffect } from "react";

const RoomForm = ({ roomDetails, onSubmit }) => {
  const [room, setRoom] = useState({
    idRoom: roomDetails?.idRoom || "",
    numberOfBeds: roomDetails?.numberOfBeds || "",
    status: roomDetails?.status || "",
    price: roomDetails?.price || "",
    roomType: roomDetails?.roomType || "",
    imageUrl: roomDetails?.imageUrl || "",
  });

  useEffect(() => {
    // If roomDetails changes, update room state
    if (roomDetails) {
      setRoom(roomDetails);
    }
  }, [roomDetails]);

  const handleChange = (e) => {
    setRoom({
      ...room,
      [e.target.name]: e.target.value,
    });
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    onSubmit(room);
  };

  return (
    <form onSubmit={handleSubmit} className="box">
      <div className="field">
        <label className="label">Room Type</label>
        <div className="control">
          <input
            className="input"
            type="text"
            placeholder="Enter room type"
            name="roomType"
            value={room.roomType}
            onChange={handleChange}
            required
          />
        </div>
      </div>
      <div className="field">
        <label className="label">Number of Beds</label>
        <div className="control">
          <input
            className="input"
            type="number"
            placeholder="Enter number of beds"
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
            placeholder="Enter price"
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
            placeholder="Enter image URL"
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
            <select name="status" value={room.status} onChange={handleChange}>
              <option value="">Select Status</option>
              <option value="1">Active</option>
              <option value="0">Inactive</option>
            </select>
          </div>
        </div>
      </div>
      <div className="control">
        <button type="submit" className="button is-link">
          Submit
        </button>
      </div>
    </form>
  );
};

export default RoomForm;
