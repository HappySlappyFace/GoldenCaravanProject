import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import "./App.scss";
import HomeRoute from "./routes/HomeRoute";
import AboutRoute from "./routes/AboutRoute";
import RoomDetailsRoute from "./routes/RoomDetailsRoute";
import BookRoomRoute from "./routes/BookRoomRoute";
import LoginRoute from "./routes/LoginRoute";
import RegisterRoute from "./routes/RegisterRoute";
import ProfileRoute from "./routes/ProfileRoute";
import ClientReservationsRoute from "./routes/ClientReservationsRoute";
import Test from "./components/Test";

function App() {
  return (
    <>
      <Router>
        <Routes>
          <Route path="/" element={<HomeRoute />} />
          <Route path="/about" element={<AboutRoute />} />
          <Route path="/roomDetails/:idRoom" element={<RoomDetailsRoute />} />
          <Route path="/book" element={<BookRoomRoute />} />
          <Route path="/login" element={<LoginRoute />} />
          <Route path="/register" element={<RegisterRoute />} />
          <Route path="/profile" element={<ProfileRoute />} />
          <Route path="/reservations" element={<ClientReservationsRoute />} />
          <Route path="/hack" element={<Test />} />
        </Routes>
      </Router>
      <div className="is-flex is-flex-direction-column"></div>
    </>
  );
}

export default App;
