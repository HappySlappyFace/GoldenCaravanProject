import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import "./App.scss";
import HomeRoute from "./routes/HomeRoute";
import AboutRoute from "./routes/AboutRoute";
import RoomDetailsRoute from "./routes/RoomDetailsRoute";
import BookRoomRoute from "./routes/BookRoomRoute";

function App() {
  return (
    <>
      <Router>
        <Routes>
          <Route path="/" element={<HomeRoute />} />
          <Route path="/about" element={<AboutRoute />} />
          <Route path="/roomDetails/:idRoom" element={<RoomDetailsRoute />} />
          <Route path="/book" element={<BookRoomRoute />} />
        </Routes>
      </Router>
      <div className="is-flex is-flex-direction-column"></div>
    </>
  );
}

export default App;
