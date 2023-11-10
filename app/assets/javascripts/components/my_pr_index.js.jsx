function myPrIndex(response) {
  const videos = response["videos"];
  const userData = response["profileData"][0]["user_data"];
  console.log(userData)
  return (
    <div>
      <h1>-My Pr-</h1>
      <a href="/my_prs/new">New pr</a>
      <div className="movie">
        {videos.map((video, index) => (
          <div className="movie__position" key={index}>
            <div className="movie__position__title"><a href={`/my_prs/${video["id"]}/edit`}>{video["pr_title"]}</a></div>
            <video
              src={video["pr_movie"]["url"]}
              className="movie__position__elm"
              autoPlay={false}
              muted={true}
              controls={true}
            />
            <p>{video["pr_explanation"]}</p>
            <p>{video["user_id"]}</p>
            <p>{userData["name"]}</p>
          </div>
        ))}
      </div>
    </div>
  );
}