import "./Navbar.scss";
import { Outlet, Link } from "react-router-dom";
import React, { useState, useEffect } from "react";

function Navbar() {
  const [userType, setUserType] = useState("");

  useEffect(() => {
    // Fetch user information when the component mounts
    const fetchUserInformation = async () => {
      try {
        const response = await fetch(
          "http://localhost/Web2/Project/api.php/getUserRole",
          {
            method: "POST",
            credentials: "include", // Ensure cookies are included
          }
        );
        // console.log(response);
        if (response.ok) {
          const userData = await response.json();
          setUserType(userData.userType);
        } else {
          // console.error(
          //   "Failed to fetch user information:",
          //   response.statusText
          // );
        }
      } catch (error) {
        // console.error("Failed to fetch user information:", error);
        // not logged in, no need to do anything ( i hope there's no edge case)
      }
    };

    fetchUserInformation();
  }, []);
  const handleLogout = async () => {
    try {
      const response = await fetch("http://localhost/Web2/Project/logout.php", {
        method: "POST",
        credentials: "include", // Ensure cookies are included
      });
      if (response.ok) {
        // Redirect to login or another appropriate page
        window.location.href = "/"; // Redirect to login page
      } else {
        console.error("Logout failed:", response.statusText);
      }
    } catch (error) {
      console.error("Logout failed:", error);
    }
  };
  return (
    <nav className="navbar" role="navigation" aria-label="main navigation">
      <div className="navbar-brand">
        <Link className="navbar-item" to="/">
          <strong>Golden Caravan</strong>
        </Link>

        {/* Here's the hamburger menu which is hidden on desktop and visible on mobile */}
        <a
          role="button"
          className="navbar-burger"
          aria-label="menu"
          aria-expanded="false"
        >
          <span aria-hidden="true"></span>
          <span aria-hidden="true"></span>
          <span aria-hidden="true"></span>
        </a>
      </div>

      <div className="navbar-menu">
        <div className="navbar-end">
          <Link className="navbar-item" to="/book-room">
            Book a room
          </Link>
          <Link className="navbar-item" to="/favorites">
            Favorites
          </Link>

          {userType ? (
            <>
              {(userType === "Admin" || userType === "SuperAdmin") && (
                <Link className="navbar-item" to="/admin-panel">
                  Admin Panel
                </Link>
              )}
              {userType === "SuperAdmin" && (
                <Link className="navbar-item" to="/super-admin-panel">
                  Super Admin Panel
                </Link>
              )}
              <Link className="navbar-item" to="/profile">
                Profile
              </Link>
              <button className="navbar-item" onClick={handleLogout}>
                Logout
              </button>
            </>
          ) : (
            <>
              <Link className="navbar-item" to="/login">
                Login
              </Link>
              <Link className="navbar-item" to="/register">
                Register
              </Link>
            </>
          )}
        </div>
      </div>
    </nav>
  );
}

export default Navbar;
