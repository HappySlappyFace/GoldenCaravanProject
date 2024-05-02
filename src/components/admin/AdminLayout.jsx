function AdminLayout() {
  return (
    <>
      <div className="columns" style={{ height: "100vh", margin: "0" }}>
        <aside
          className="menu column is-2 has-background-light"
          style={{ display: "flex", flexDirection: "column" }}
        >
          <p className="menu-label">General</p>
          <ul className="menu-list" style={{ flex: 1 }}>
            <li>
              <Link to="/admin-panel" className="button is-white is-fullwidth">
                All Reservations
              </Link>
            </li>
            <li>
              <Link
                to="/admin-manage-rooms"
                className="button is-white is-fullwidth"
              >
                Manage Rooms
              </Link>
            </li>
          </ul>
        </aside>
      </div>
    </>
  );
}

export default Layout;
