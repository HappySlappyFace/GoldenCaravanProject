function Profile() {
  // fetch("http://localhost/Web2/Project/getProfile.php", {
  //   method: "GET",
  //   credentials: "include", // This tells the browser to include cookies in the request
  // })
  //   .then((response) => response.json())
  //   .then((data) => console.log(data))
  //   .catch((error) => console.error("Error:", error));

  fetch("http://localhost/Web2/Project/getProfile.php", {
    method: "GET",
    credentials: "include", // This is important for sending cookies
  })
    .then((response) => {
      // console.log(response);
      if (response.ok) {
        return response.json();
      } else {
        throw new Error("Not logged in");
      }
    })
    .then((data) => {
      if (data.status === "success") {
        // Now you have your user data
        console.log(data.data);
        // You can set this data in the state and display it on the profile page
      } else {
        // Handle any errors, like not being logged in
        console.error(data.message);
      }
    })
    .catch((error) => {
      console.error("There was an error retrieving the profile data:", error);
    });

  return <></>;
}

export default Profile;
