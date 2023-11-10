function announcesIndex(response) {
const announces = Array.from(response["announces"]);
console.log(announces)
  return (
    <div>
    <h1>-Announces Index-</h1>
      <div className="movie">
        {announces.map((announce, index) => (
          <div className="movie__position" key={index}>
            <p>{announce["user_name"]}</p>
            <p>{announce["title"]}</p>
            <announce
              src={announce["img"]["url"]}
            />  
            <p>{announce["explanation"]}</p>
            <p>{announce["time"]}</p>
          </div>
          ))}
      </div>
    </div>
  );
}