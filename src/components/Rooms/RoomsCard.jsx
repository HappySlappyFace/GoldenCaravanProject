function RoomsCard(props) {
  return (
    <>
      <div className="card">
        <div className="card-image">
          <figure className="image is-4by3">
            <img src={props.imageUrl} alt="Hotel Room" />
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
        <footer class="card-footer">
          <a href="#" class="card-footer-item">
            More details
          </a>
          <a href="#" class="card-footer-item">
            Book
          </a>
        </footer>
      </div>
    </>
  );
}

export default RoomsCard;
