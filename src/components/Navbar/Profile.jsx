import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom";

function Profile() {
  const [user, setUser] = useState({
    name: "John Doe",
    imageUrl: "https://via.placeholder.com/150", // Placeholder image
  });
  const [loading, setLoading] = useState(false);

  const fetchUserInfo = async () => {
    try {
      const response = await fetch(
        "http://localhost/Web2/Project/getProfile.php",
        {
          method: "GET",
          credentials: "include",
        }
      );

      if (response.ok) {
        const data = await response.json();
        if (data.status === "success") {
          if (data.data.profilePicture === "") {
            data.data.profilePicture = "https://via.placeholder.com/150";
          }
          let newData = {
            imageUrl: data.data.profilePicture,
            name: data.data.firstName + " " + data.data.lastName,
          };
          return newData; // Return the new data to be used by setUser
        } else {
          console.error(data.message);
        }
      } else {
        throw new Error("Not logged in");
      }
    } catch (error) {
      console.error("There was an error retrieving the profile data:", error);
    }
  };

  useEffect(() => {
    async function updateUserInfo() {
      const userInfo = await fetchUserInfo();
      if (userInfo) {
        setUser(userInfo);
      }
    }
    updateUserInfo();
  }, []);

  const uploadImage = async (file) => {
    const formData = new FormData();
    formData.append("profilePicture", file);

    const response = await fetch("http://localhost/Web2/Project/upload.php", {
      method: "POST",
      body: formData,
    });

    if (!response.ok) {
      throw new Error("Failed to upload image");
    }

    return response.json();
  };

  const handleImageUpload = (event) => {
    const file = event.target.files[0];
    if (file) {
      setLoading(true);
      uploadImage(file)
        .then((data) => {
          setUser((prev) => ({ ...prev, imageUrl: data.url }));
          setLoading(false);
        })
        .catch((error) => {
          console.error("Error:", error);
          setLoading(false);
        });
    }
  };

  return (
    <div className="columns" style={{ height: "100vh", margin: "0" }}>
      <aside
        className="menu column is-2 has-background-light"
        style={{ display: "flex", flexDirection: "column" }}
      >
        <p className="menu-label">General</p>
        <ul className="menu-list" style={{ flex: 1 }}>
          <li>
            <Link to="/profile" className="button is-white is-fullwidth">
              Profile
            </Link>
          </li>
          <li>
            <Link to="/reservations" className="button is-white is-fullwidth">
              All Reservations
            </Link>
          </li>
        </ul>
      </aside>

      <div className="column is-10">
        <div className="box">
          <article className="media">
            <div className="media-left">
              <figure className="image is-128x128">
                <img src={user.imageUrl} alt="User profile" />
              </figure>
            </div>
            <div className="media-content">
              <div className="content">
                <strong>{user.name}</strong>
                <br />
                <div className="file is-boxed">
                  <label className="file-label">
                    <input
                      className="file-input"
                      type="file"
                      name="resume"
                      onChange={handleImageUpload}
                    />
                    <span className="file-cta">
                      <span className="file-icon">
                        <i className="fas fa-upload"></i>
                      </span>
                      <span className="file-label">Change profile photo</span>
                    </span>
                  </label>
                </div>
                {loading && <p>Uploading...</p>}
              </div>
            </div>
          </article>
        </div>
      </div>
    </div>
  );
}

export default Profile;
