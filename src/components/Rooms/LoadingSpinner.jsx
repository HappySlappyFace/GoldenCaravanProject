function LoadingSpinner() {
  // Custom CSS for the spinner and its wrapper
  const spinnerWrapperStyles = {
    display: "flex",
    justifyContent: "center",
    alignItems: "center",
    height: "100%", // Make sure this covers the height of the card-image container
  };

  const spinnerStyles = {
    width: "3rem", // Size of the spinner
    height: "3rem", // Size of the spinner
  };

  function LoadingSpinner() {
    return (
      <div style={spinnerWrapperStyles}>
        <div className="loader is-loading" style={spinnerStyles}></div>
      </div>
    );
  }
  return (
    <div className="loader-wrapper is-active">
      <div className="loader is-loading"></div>
    </div>
  );
}
export default LoadingSpinner;
