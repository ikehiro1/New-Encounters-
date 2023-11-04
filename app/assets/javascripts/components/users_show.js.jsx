function UsersShow(profileData) {
  const userData = profileData["profileData"][0]["user_data"]
  const userId = userData["id"]
  const historyLink = `/histories/${userId}`;
  const userEditLink = `/users/${userId}/edit`;
  console.log(userEditLink)
   return (
    <div>
      <h1>-My Page-</h1>
        画像
        名前
        性別
        生年月日
        趣味<br/>
        
        <a href={historyLink}>　
          <b>My History</b>
        </a><br/> 
        <a href={userEditLink}> 
          <b>My Page Edit</b>
        </a>
    </div>
  );
}
