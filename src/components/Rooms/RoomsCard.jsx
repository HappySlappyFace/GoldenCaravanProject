import { useState } from "react";
import LoadingSpinner from "./LoadingSpinner";

function RoomsCard(props) {
  const [imageLoaded, setImageLoaded] = useState(false);
  return (
    <>
      <div className="card">
        <div className="card-image">
          <figure className="image is-4by3">
            {!imageLoaded && <LoadingSpinner />}{" "}
            <img
              src={props.imageUrle} //troubleshooting the spinner
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
          <a href="#" className="card-footer-item">
            More details
          </a>
          <a href="#" className="card-footer-item">
            Book
          </a>
        </footer>
      </div>
    </>
  );
}

export default RoomsCard;
