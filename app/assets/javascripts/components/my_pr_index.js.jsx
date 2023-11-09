function myPrIndex(response) {
  const videos = response["videos"];
  return (
    <div>
      <h1>-My Pr-</h1>
      <a href="/my_prs/new">New pr</a>
      <div className="movie">
        {videos.map((video, index) => (
          <div className="movie__position" key={index}>
            <p>{video["pr_title"]}</p>
            <video
              src={video["pr_movie"]["url"]}
              className="movie__position__elm"
              autoPlay={false}
              muted={true}
              controls={true}
            />
            <p>{video["pr_explanation"]}</p>
          </div>
        ))}
      </div>
    </div>
  );
}