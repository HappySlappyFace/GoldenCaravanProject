import React, { useState } from "react";

const RegisterPage = () => {
  const [userInfo, setUserInfo] = useState({
    firstName: "",
    lastName: "",
    email: "",
    password: "",
    phone: "",
  });

  const handleChange = (e) => {
    const { name, value } = e.target;
    setUserInfo({ ...userInfo, [name]: value });
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    console.log("Register with:", userInfo);
    // Add your logic to handle registration here
  };

  return (
    <section className="section">
      <div className="container">
        <div className="columns is-centered">
          <div className="column is-5">
            <form onSubmit={handleSubmit}>
              {/* First Name */}
              <div className="field">
                <label className="label" htmlFor="firstName">
                  First Name
                </label>
                <div className="control">
                  <input
                    className="input"
                    type="text"
                    id="firstName"
                    name="firstName"
                    value={userInfo.firstName}
                    onChange={handleChange}
                    required
                  />
                </div>
              </div>

              {/* Last Name */}
              <div className="field">
                <label className="label" htmlFor="lastName">
                  Last Name
                </label>
                <div className="control">
                  <input
                    className="input"
                    type="text"
                    id="lastName"
                    name="lastName"
                    value={userInfo.lastName}
                    onChange={handleChange}
                    required
                  />
                </div>
              </div>

              {/* Email */}
              <div className="field">
                <label className="label" htmlFor="email">
                  Email
                </label>
                <div className="control">
                  <input
                    className="input"
                    type="email"
                    id="email"
                    name="email"
                    value={userInfo.email}
                    onChange={handleChange}
                    required
                  />
                </div>
              </div>

              {/* Phone */}
              <div className="field">
                <label className="label" htmlFor="phone">
                  Phone
                </label>
                <div className="control">
                  <input
                    className="input"
                    type="tel"
                    id="phone"
                    name="phone"
                    value={userInfo.phone}
                    onChange={handleChange}
                    required
                  />
                </div>
              </div>

              {/* Password */}
              <div className="field">
                <label className="label" htmlFor="password">
                  Password
                </label>
                <div className="control">
                  <input
                    className="input"
                    type="password"
                    id="password"
                    name="password"
                    value={userInfo.password}
                    onChange={handleChange}
                    required
                  />
                </div>
              </div>

              <div className="control">
                <button className="button is-primary" type="submit">
                  Register
                </button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
  );
};

export default RegisterPage;
