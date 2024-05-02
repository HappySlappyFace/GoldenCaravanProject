import React, { useState, useEffect } from "react";

const RoomList = ({ rooms, setRooms, onEdit, onDelete }) => {
  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState(null);

  // Fetch rooms when the component mounts
  useEffect(() => {
    const fetchRooms = async () => {
      setIsLoading(true);
      setError(null);
      try {
        // Update the URL to match your actual API endpoint
        const response = await fetch(
          "http://localhost/Web2/Project/admin/manageRooms.php",
          { credentials: "include" }
        );
        if (!response.ok) {
          throw new Error("Failed to fetch");
        }
        const data = await response.json();
        if (data.success) {
          setRooms(data.rooms);
        } else {
          throw new Error(data.message || "An error occurred");
        }
      } catch (error) {
        setError(error.message);
      }
      setIsLoading(false);
    };

    fetchRooms();
  }, []);

  if (isLoading) return <p>Loading...</p>;
  if (error) return <p>Error: {error}</p>;

  return (
    <table className="table is-striped is-fullwidth">
      <thead>
        <tr>
          <th>ID</th>
          <th>Type</th>
          <th>Beds</th>
          <th>Price</th>
          <th>Status</th>
          <th>Actions</th>
        </tr>
      </thead>
      <tbody>
        {rooms.map((room) => (
          <tr key={room.idRoom}>
            <td>{room.idRoom}</td>
            <td>{room.roomType}</td>
            <td>{room.numberOfBeds}</td>
            <td>{room.price}</td>
            <td>{room.status === "1" ? "Active" : "Inactive"}</td>
            <td>
              <button
                className="button is-small is-info"
                onClick={() => onEdit(room)}
              >
                Edit
              </button>
              <button
                className="button is-small is-danger"
                onClick={() => onDelete(room.idRoom)}
              >
                Delete
              </button>
            </td>
          </tr>
        ))}
      </tbody>
    </table>
  );
};

export default RoomList;
