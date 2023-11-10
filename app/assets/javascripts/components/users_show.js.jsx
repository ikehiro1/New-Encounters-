function UsersShow(response) {
    const userData = response["profileData"][0]["user_data"];
    const userId = userData["id"];
    console.log(userData);
    const userEditLink = `/users/${userId}/edit`;
    if (sessionStorage.getItem("Animation")) {
    } else {
      setTimeout(() => {
          sessionStorage.setItem("Animation", "Already");
      },1500)
    }
    const no_image = "../images/no_image.jpg";
  
    return (
      <div>
        {!sessionStorage.getItem("Animation") && (
          <div className="opening-animation">
            <h1>New Entertainer</h1>
          </div>
        )}
        <div className="profile">
          <h1>-My Page-</h1>
          
          <div>
            <img src={no_image}/>
          </div>
          
          <div>Name</div>
          <p>{userData["name"]}</p>
          <div>Entertainer</div>
          <p>{userData["role"]}</p>
          <div>Birthday</div>
          <p>{userData["birthday"]}</p>
          <div>History</div>
          <p>{userData["history"]}</p>
          <br />
          <div className="actions">
            <a className="actions__mypr" href={userEditLink}>
              <b>My Page Edit</b>
            </a>
          </div>
        </div>
      </div>
    );
  }