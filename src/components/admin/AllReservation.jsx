import React, { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";

function AllReservation() {
  const [reservations, setReservations] = useState([]);
  const [loading, setLoading] = useState(true);
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
        // if (response.status === 403) {
        //   navigate("/");
        //   return;
        // }
        if (!response.ok) {
          throw new Error("Failed to fetch reservations");
        }

        const data = await response.json();
        console.log(data);
        setReservations(data);
        setLoading(false);
      } catch (error) {
        console.error(error);

        setLoading(false);
      }
    };

    fetchReservations();
  }, []);

  return (
    <div className="container">
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
              <th>Status</th>
              <th>Price</th>
            </tr>
          </thead>
          <tbody>
            {reservations.map((reservation) => (
              <tr key={reservation.idBooking}>
                <td>{reservation.idBooking}</td>
                <td>{reservation.idClient}</td>
                <td>{reservation.idRoom}</td>
                <td>{reservation.startDate}</td>
                <td>{reservation.endDate}</td>
                <td>{reservation.status}</td>
                <td>{reservation.price}</td>
              </tr>
            ))}
          </tbody>
        </table>
      )}
    </div>
  );
}

export default AllReservation;
