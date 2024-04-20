// import { useState } from "react";
import "./App.scss";
import Navbar from "./components/Navbar";
import TopSection from "./components/TopSection";
import SearchBar from "./components/SearchBar";

function App() {
  return (
    <>
      <div className="is-flex is-flex-direction-column">
        <Navbar />
        <TopSection />
        <SearchBar />
      </div>
    </>
  );
}

export default App;
