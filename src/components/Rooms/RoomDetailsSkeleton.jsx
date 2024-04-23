import React from "react";

const RoomDetailsSkeleton = () => {
  return (
    <div className="card">
      <div className="card-content">
        <div className="columns">
          {/* Image Column Skeleton */}
          <div className="column is-one-third">
            <div
              className="skeleton-block is-skeleton"
              style={{ height: "200px" }}
            ></div>
          </div>

          {/* Information Column Skeleton */}
          <div className="column">
            <div
              className="skeleton-lines is-skeleton"
              style={{ width: "80%", height: "24px", marginBottom: "8px" }}
            ></div>
            <div
              className="skeleton-lines is-skeleton"
              style={{ width: "70%", height: "20px", marginBottom: "8px" }}
            ></div>
            <div
              className="skeleton-lines is-skeleton"
              style={{ width: "60%", height: "20px", marginBottom: "8px" }}
            ></div>
            <div
              className="skeleton-lines is-skeleton"
              style={{ width: "50%", height: "20px", marginBottom: "8px" }}
            ></div>
            <div
              className="skeleton-lines is-skeleton"
              style={{ width: "40%", height: "20px", marginBottom: "8px" }}
            ></div>
          </div>
        </div>
      </div>

      {/* Booking Button Skeleton */}
      <footer className="card-footer">
        <div
          className="skeleton-block is-skeleton"
          style={{ height: "40px", width: "100%" }}
        ></div>
      </footer>
    </div>
  );
};

export default RoomDetailsSkeleton;
