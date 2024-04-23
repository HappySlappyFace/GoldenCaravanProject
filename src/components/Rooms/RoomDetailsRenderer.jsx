function RoomDetailsRenderer(props) {
  return (
    <div className="card">
      <div className="card-content">
        <div className="columns">
          {/* Image Column */}
          <div className="column is-one-third">
            <figure className="image is-4by3">
              <img
                src={roomDetails.imageUrl}
                alt={`Room ${roomDetails.idRoom}`}
                style={{ objectFit: "cover" }}
              />
            </figure>
          </div>

          {/* Information Column */}
          <div className="column">
            <p className="title is-4">{roomDetails.roomType} Room</p>
            <p className="subtitle is-6">Room ID: {roomDetails.idRoom}</p>
            <p>Number of Beds: {roomDetails.numberOfBeds}</p>
            <p>Price per Night: ${roomDetails.price}</p>
            <p>
              Status: {roomDetails.status === 1 ? "Available" : "Unavailable"}
            </p>
            <p>Hotel ID: {roomDetails.idHotel}</p>
            <time dateTime="2016-1-1">Last updated: 11:09 PM - 1 Jan 2016</time>
          </div>
        </div>
      </div>

      {/* Booking Button */}
      <footer className="card-footer">
        <a href="#" className="card-footer-item button is-primary">
          Book Now
        </a>
      </footer>
    </div>
  );
}

export default RoomDetailsRenderer;
