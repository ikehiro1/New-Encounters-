function UsersShow(response) {
    const userData = response["profileData"][0]["user_data"];
    const userId = userData["id"];
    const historyLink = `/histories/${userId}`;
    const userEditLink = `/users/${userId}/edit`;
    if (sessionStorage.getItem("Animation")) {
      console.log("アニメーション実行済み");
    } else {
      setTimeout(() => {
          sessionStorage.setItem("Animation", "Already");
      },1500)
    }
  
    return (
      <div>
        {!sessionStorage.getItem("Animation") && (
          <div className="opening-animation">
            <h1>New Entertainer</h1>
          </div>
        )}
        <div className="profile">
          <h1>-My Page-</h1>
          <div>名前</div>
          <p>{userData["name"]}</p>
          <div>entertainer</div>
          <p>{userData["role"]}</p>
          <div>生年月日</div>
          <p>{userData["birthday"]}</p>
          <div>趣味</div>
          <a href={historyLink}>
            <b>My History</b>
          </a>
          <br />
          <a href={userEditLink}>
            <b>My Page Edit</b>
          </a>
        </div>
      </div>
    );
  }