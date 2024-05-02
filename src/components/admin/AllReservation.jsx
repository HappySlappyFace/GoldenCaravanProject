import React, { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import { Link } from "react-router-dom";

function AllReservation() {
  const [reservations, setReservations] = useState([]);
  const [loading, setLoading] = useState(true);
  const [searchTerm, setSearchTerm] = useState("");

  const navigate = useNavigate();

  useEffect(() => {
    const fetchReservations = async () => {
      try {
        const response = await fetch(
          "http://localhost/Web2/Project/admin/fetchAllReservations.php",
          {
            method: "POST",
            headers: {
              "Content-Type": "application/json",
            },
            credentials: "include",
          }
        );
        if (response.status === 403) {
          navigate("/");
          return;
        }
        if (!response.ok) {
          throw new Error("Failed to fetch reservations");
        }

        const data = await response.json();
        // console.log(data);
        setReservations(data);
        setLoading(false);
      } catch (error) {
        console.error(error);

        setLoading(false);
      }
    };

    fetchReservations();
  }, []);

  const handleUpdateStatus = async (reservation) => {
    const today = new Date();
    const endDate = new Date(reservation.endDate);
    let url = "";
    if (reservation.status == 0) {
      url = `http://localhost/Web2/Project/admin/manageReservation.php/validateReservation/${reservation.idBooking}`;
    } else if (reservation.status == 1 && endDate < today) {
      url = `http://localhost/Web2/Project/admin/manageReservation.php/finishReservation/${reservation.idBooking}`;
    }
    if (url) {
      let newStatus = parseInt(reservation.status) + 1;
      const response = await fetch(url, { method: "PUT" });
      const data = await response.json();
      if (data.success) {
        // Refresh the list or modify the state to reflect the change
        console.log("Status updated successfully!");
        const updatedReservations = reservations.map((r) => {
          if (r.idBooking === reservation.idBooking) {
            return { ...r, status: newStatus }; // Update the status of the matching reservation
          }
          return r;
        });
        setReservations(updatedReservations);
      } else {
        console.error("Failed to update status");
      }
    }
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
        <div className="field">
          <div className="control">
            <input
              className="input"
              type="text"
              placeholder="Search by Client ID"
              value={searchTerm}
              onChange={(e) => setSearchTerm(e.target.value)}
            />
          </div>
        </div>

        <h2 className="title">Reservation List</h2>
        {loading ? (
          <progress className="progress is-small is-primary" max="100">
            Loading...
          </progress>
        ) : (
          <table className="table is-fullwidth">
            <thead>
              <tr>
                <th>Reservation ID</th>
                <th>Client ID</th>
                <th>Room ID</th>
                <th>Start Date</th>
                <th>End Date</th>
                {/* <th>Status</th> */}
                <th>Price</th>
                <th>Actions</th>
              </tr>
            </thead>
            <tbody>
              {reservations
                .filter(
                  (reservation) =>
                    reservation.idClient &&
                    reservation.idClient
                      .toString()
                      .toLowerCase()
                      .includes(searchTerm.toLowerCase())
                )
                .map((reservation) => (
                  <tr key={reservation.idBooking}>
                    <td>{reservation.idBooking}</td>
                    <td>{reservation.idClient}</td>
                    <td>{reservation.idRoom}</td>
                    <td>{reservation.startDate}</td>
                    <td>{reservation.endDate}</td>
                    {/* <td>{reservation.status}</td> */}
                    <td>{reservation.price}</td>
                    <td>
                      {reservation.status == "0" && (
                        <button
                          className="button is-warning"
                          onClick={() => handleUpdateStatus(reservation)}
                        >
                          Validate
                        </button>
                      )}
                      {reservation.status == "1" &&
                        new Date(reservation.endDate) > new Date() && (
                          <button disabled className="button is-info">
                            Ongoing
                          </button>
                        )}
                      {reservation.status == "1" &&
                        new Date(reservation.endDate) < new Date() && (
                          <button
                            className="button is-danger"
                            onClick={() => handleUpdateStatus(reservation)}
                          >
                            Finish
                          </button>
                        )}
                      {reservation.status == "2" && (
                        <button disabled className="button is-success">
                          Done
                        </button>
                      )}
                    </td>
                  </tr>
                ))}
            </tbody>
          </table>
        )}
      </div>
    </div>
  );
}

export default AllReservation;
