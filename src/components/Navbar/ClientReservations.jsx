import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom";
function ClientReservations() {
  const [reservations, setReservations] = useState([]);
  const [isLoading, setIsLoading] = useState(true);

  useEffect(() => {
    fetchReservations()
      .then((data) => {
        setReservations(data);
        setIsLoading(false);
      })
      .catch((error) => {
        console.error("Failed to fetch reservations:", error);
        setIsLoading(false);
      });
  }, []);

  const fetchReservations =
    // Simulate fetching data
    async () => {
      try {
        const response = await fetch(
          "http://localhost/Web2/Project/getClientReservations.php",
          {
            method: "GET",
            credentials: "include",
          }
        );

        if (response.ok) {
          const data = await response.json();
          if (data.status === "success") {
            console.log(data);
            return data.data;
          } else {
            console.error(data.message);
            return {};
          }
        } else {
          throw new Error("Not logged in");
        }
      } catch (error) {
        console.error("There was an error retrieving the profile data:", error);
      }
    };

  if (isLoading) {
    return (
      <div className="section">
        <p>Loading...</p>
      </div>
    );
  }

  return (
    <div className="columns" style={{ height: "100vh", margin: "0" }}>
      <aside
        className="menu column is-2 has-background-light"
        style={{ display: "flex", flexDirection: "column" }}
      >
        <p className="menu-label">General</p>
        <ul className="menu-list" style={{ flex: 1 }}>
          <li>
            <Link to="/profile" className="button is-white is-fullwidth">
              Profile
            </Link>
          </li>
          <li>
            <Link to="/reservations" className="button is-white is-fullwidth">
              All Reservations
            </Link>
          </li>
        </ul>
      </aside>

      <div className="column is-10">
        <div className="section">
          <h1 className="title">All Reservations</h1>
          <table className="table is-fullwidth is-striped is-hoverable">
            <thead>
              <tr>
                <th>ID</th>
                <th>Date</th>
                <th>Hotel</th>
                <th>Status</th>
              </tr>
            </thead>
            <tbody>
              {reservations.map((reservation) => (
                <tr key={reservation.id}>
                  <td>{reservation.idBooking}</td>
                  <td>{reservation.startDate}</td>
                  <td>{reservation.hotelName}</td>
                  <td>{reservation.status}</td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      </div>
    </div>
  );
}

export default ClientReservations;
