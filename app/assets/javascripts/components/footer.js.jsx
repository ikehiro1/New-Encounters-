function Footer(response) {
    const userLink = `/users/${response["currentUserId"]}`;
    console.log(userLink)
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
        <a href="/">
          <li><i className="fa-regular fa-envelope"></i><span>content</span></li>
        </a>
      </ul>
    </div>
  );
}