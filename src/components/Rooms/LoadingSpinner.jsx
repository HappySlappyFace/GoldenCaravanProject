function LoadingSpinner() {
  const spinnerWrapperStyles = {
    display: "flex",
    justifyContent: "center",
    alignItems: "center",
    height: "100%",
  };

  const spinnerStyles = {
    width: "3rem",
    height: "3rem",
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
