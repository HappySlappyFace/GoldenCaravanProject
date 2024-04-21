// import { useState } from "react";
import "./App.scss";
import Navbar from "./components/Navbar";

import Body from "./Body";

function App() {
  return (
    <>
      <div className="is-flex is-flex-direction-column">
        <Navbar />
        <Body />
      </div>
    </>
  );
}

export default App;
