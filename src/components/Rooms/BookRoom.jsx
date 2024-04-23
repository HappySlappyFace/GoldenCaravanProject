import { useParams, useLocation } from "react-router-dom";
import React, { useEffect, useState } from "react";

function BookRoom() {
  let location = useLocation();
  let roomData = location.state; // This is the room data passed from the navigate function
  return <></>;
}

export default BookRoom;
