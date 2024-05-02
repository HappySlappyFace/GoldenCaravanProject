import React, { useState } from "react";
import RoomList from "./RoomList";
import RoomEditModal from "./RoomEditModal"; // Import the RoomEditModal component
import { Link } from "react-router-dom";

const RoomsPage = () => {
  const [rooms, setRooms] = useState([]);
  const [isModalActive, setIsModalActive] = useState(false);
  const [activeRoom, setActiveRoom] = useState(null);
  const [searchTerm, setSearchTerm] = useState("");

  const handleEdit = (room) => {
    setActiveRoom(room);
    setIsModalActive(true);
  };
  const handleNewRoom = () => {
    setActiveRoom(null); // Ensure no room data is passed
    setIsModalActive(true);
  };

  const handleDelete = async (roomId) => {
    console.log("Deleting room:", roomId);
    try {
      const response = await fetch(
        `http://localhost/Web2/Project/admin/manageRooms.php/rooms/${roomId}`,
        {
          credentials: "include",
          method: "DELETE",
        }
      );
      if (response.ok) {
        setRooms((prevRooms) =>
          prevRooms.filter((room) => room.idRoom !== roomId)
        );
      } else {
        throw new Error("Failed to delete the room.");
      }
    } catch (error) {
      console.error("Error deleting room:", error);
    }
  };

  const saveRoom = (room) => {
    const isNewRoom = !room.idRoom; // Check if it's a new room by absence of idRoom
    const url = isNewRoom
      ? "http://localhost/Web2/Project/admin/manageRooms.php/rooms"
      : `http://localhost/Web2/Project/admin/manageRooms.php/rooms/${room.idRoom}`;

    const method = isNewRoom ? "POST" : "PUT";

    fetch(url, {
      method: method,
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(room),
      credentials: "include",
    })
      .then((response) => response.json())
      .then((data) => {
        if (data.success) {
          if (isNewRoom) {
            setRooms([...rooms, { ...room, idRoom: data.newId }]); // Assume API returns new ID
          } else {
            setRooms(rooms.map((r) => (r.idRoom === room.idRoom ? room : r)));
          }
          setIsModalActive(false);
        } else {
          throw new Error(data.message || "Failed to save the room.");
        }
      })
      .catch((error) => {
        console.error("Error saving room:", error);
      });
  };

  const closeModal = () => {
    setIsModalActive(false);
    setActiveRoom(null);
  };

  return (
    <div className="columns" style={{ height: "100vh", margin: "0" }}>
      <aside
        className="menu column is-2 has-background-light"
        style={{ display: "flex", flexDirection: "column" }}
      >
        <p className="menu-label">General</p>
        <ul className="menu-list" style={{ flex: 1 }}>
          <li>
            <Link to="/admin-panel" className="button is-white is-fullwidth">
              All Reservations
            </Link>
          </li>
          <li>
            <Link
              to="/admin-manage-rooms"
              className="button is-white is-fullwidth"
            >
              Manage Rooms
            </Link>
          </li>
        </ul>
      </aside>

      <div className="column is-10">
        <div className="field has-addons">
          <p className="control">
            <button className="button is-primary" onClick={handleNewRoom}>
              Add New Room
            </button>
          </p>
          <p className="control">
            <input
              className="input"
              type="text"
              placeholder="Search by ID"
              value={searchTerm}
              onChange={(e) => setSearchTerm(e.target.value)}
            />
          </p>
        </div>

        <RoomList
          rooms={rooms.filter((room) =>
            room.idRoom.toLowerCase().includes(searchTerm.toLowerCase())
          )}
          setRooms={setRooms}
          onEdit={handleEdit}
          onDelete={handleDelete}
        />
        {isModalActive && (
          <RoomEditModal
            isActive={isModalActive}
            onClose={closeModal}
            roomDetails={activeRoom}
            onSave={saveRoom}
          />
        )}
      </div>
    </div>
  );
};

export default RoomsPage;
