import { useState } from "react";
import React from "react";
import { Link, useNavigate } from "react-router-dom";
import LoadingSpinner from "./LoadingSpinner";

function RoomsCard(props) {
  const [imageLoaded, setImageLoaded] = useState(false);

  const navigate = useNavigate();

  const handleBookClick = () => {
    navigate(`/book/${props.idRoom}`, { state: { ...props } });
  };
  return (
    <>
      <div className="card">
        <div className="card-image">
          <figure className="image is-4by3">
            {!imageLoaded && <LoadingSpinner />}{" "}
            <img
              src={props.imageUrl}
              alt="Hotel Room"
              onLoad={() => setImageLoaded(true)}
              style={{ display: imageLoaded ? "block" : "none" }}
            />
          </figure>
        </div>
        <div className="card-content">
          <div className="media">
            <div className="media-content">
              <p className="title is-4">
                {props.roomType} room with {props.numberOfBeds} beds.
              </p>
              <p className="subtitle is-6">{props.idRoom}</p>
            </div>
          </div>

          <div className="content">
            <p className="subtitle is-6">Price: {props.price} TND</p>
            <p className="subtitle is-6">
              Currently {props.status == 1 ? "Available" : "Booked"}
            </p>
          </div>
        </div>

        <footer className="card-footer">
          <Link
            to={`/roomDetails/${props.idRoom}`}
            className="card-footer-item"
          >
            More details
          </Link>
          <Link to={`/book/${props.idRoom}`} className="card-footer-item">
            Book
          </Link>
        </footer>
      </div>
    </>
  );
}

export default RoomsCard;
