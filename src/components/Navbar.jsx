import "./Navbar.scss";
import { Outlet, Link } from "react-router-dom";

function Navbar() {
  return (
    <nav className="navbar" role="navigation" aria-label="main navigation">
      <div className="navbar-brand">
        <a className="navbar-item" href="/">
          <strong>Golden Caravan</strong>
        </a>

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

          <Link className="navbar-item" to="/login">
            Login
          </Link>

          <Link className="navbar-item" to="/register">
            Register
          </Link>
        </div>
      </div>
    </nav>
  );
}

export default Navbar;
