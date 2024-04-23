import "./Navbar.scss";
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
          <a className="navbar-item" href="/book-room">
            Book a room
          </a>
          <a className="navbar-item" href="/favorites">
            Favorites
          </a>
          <a className="navbar-item" href="/login">
            Login
          </a>
        </div>
      </div>
    </nav>
  );
}

export default Navbar;
