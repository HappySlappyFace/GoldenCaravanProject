import React, { useState } from "react";

const LoginPage = () => {
  const [credentials, setCredentials] = useState({ email: "", password: "" });

  const handleChange = (e) => {
    const { name, value } = e.target;
    setCredentials({ ...credentials, [name]: value });
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    // Perform fetch request to login endpoint
    try {
      const response = await fetch("/api/login", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify(credentials),
        credentials: "include", // Necessary to include the cookie with the request
      });
      if (response.ok) {
        // Handle successful login, e.g., navigate to a different page or update the state
      } else {
        // Handle errors, e.g., show an error message
      }
    } catch (error) {
      // Handle network errors
    }
  };

  return (
    <div className="section">
      <div className="container">
        <form onSubmit={handleSubmit}>
          {/* ...form inputs... */}
          <div className="field">
            <label className="label" htmlFor="email">
              Email
            </label>
            <div className="control">
              <input
                className="input"
                type="email"
                name="email"
                onChange={handleChange}
                required
              />
            </div>
          </div>
          <div className="field">
            <label className="label" htmlFor="password">
              Password
            </label>
            <div className="control">
              <input
                className="input"
                type="password"
                name="password"
                onChange={handleChange}
                required
              />
            </div>
          </div>
          <div className="field">
            <div className="control">
              <button className="button is-primary" type="submit">
                Login
              </button>
            </div>
          </div>
        </form>
      </div>
    </div>
  );
};

export default LoginPage;
