function myPrIndex(response) {
  const videos = response["videos"];
  const currentUser = response["currentUser"];
  const createdUserName = response["createdUserName"];
  const notMyCreated = () => {
    const notMyCreated = document.getElementById("notMyCreated");
    notMyCreated.classList.toggle("hide")
  };
  
  return (
    <div>
      <h1>-Pr Movie-</h1>
      <a className="image__position__button" href="/my_prs/new">New pr</a>
    
        <button onClick={notMyCreated}><i class="fa-solid fa-rotate"></i></button>
      
      <div className="movie">
        {videos.map((video, index) => {
          if (currentUser["id"] === video["user_id"]) {
            return (
              <div className="movie__position" key={index}>
                <div className="movie__position__title">
                  <strong><a href={`/my_prs/${video["id"]}/edit`}>{video["pr_title"]}</a></strong>
                </div>
                <video
                  src={video["pr_movie"]["url"]}
                  className="movie__position__elm"
                  autoPlay={false}
                  muted={true}
                  controls={true}
                />
                <p>{video["pr_explanation"]}</p>
                <p>{createdUserName[index]}</p>
              </div>
            );
          } else {
            return (
              <div id="notMyCreated" className="movie__position" key={index}>
                <div className="movie__position__title">
                  <a href={`/my_prs/${video["id"]}/edit`}>{video["pr_title"]}</a>
                </div>
                <video
                  src={video["pr_movie"]["url"]}
                  className="movie__position__elm"
                  autoPlay={false}
                  muted={true}
                  controls={true}
                />
                <p>{video["pr_explanation"]}</p>
                <p>{createdUserName[index]}</p>
              </div>
            );
          }
        })}
      </div>
    </div>
  );
}