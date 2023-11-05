function Footer(response) {
    const userLink = `/users/${response["currentUserId"]}`;
    const userLogOutValue = response["logOutValue"];
    const animationStatus = sessionStorage.getItem("Animation");
    const removeAnimationStatus = () => {
      sessionStorage.removeItem("Animation");
    }
  return (
    <div className="footer">
      <ul>
        <a href={userLink}>
          <li><i className="fa-solid fa-user"></i><span>mypage</span></li>
        </a>
        <a href="/communities">
          <li><i className="fa-solid fa-user-group"></i><span>communities</span></li>
        </a>
        <a href="/announces">
          <li><i className="fa-solid fa-bullhorn"></i><span>announces</span></li>
        </a>
        <li>
          <form className="button_to" method="post" action="/users/sign_out">
              <input type="hidden" name="_method" value="delete" autoComplete="off" />
              <button onClick={removeAnimationStatus} type="submit"><p className="fa-solid fa-right-from-bracket">exit</p></button>
              <input type="hidden" name="authenticity_token" value={userLogOutValue} autoComplete="off" />
          </form>
        </li>
      </ul>
    </div>
  );
}