function SkeletonCard() {
  return (
    <>
      <div className="card">
        <div className="card-image">
          <figure className="image is-4by3">
            <div className="is-skeleton" style={{ height: "100%" }}></div>
          </figure>
        </div>
        <div className="card-content">
          <div className="media">
            <div className="media-content">
              <div className="skeleton-lines">
                <div></div>
                <div></div>
              </div>
            </div>
          </div>

          <div className="content">
            <div className="skeleton-lines">
              <div></div>
              <div></div>
            </div>
          </div>
        </div>
        <footer className="card-footer is-loading">
          <div href="#" className="card-footer-item skeleton-block"></div>
        </footer>
      </div>
    </>
  );
}

export default SkeletonCard;
