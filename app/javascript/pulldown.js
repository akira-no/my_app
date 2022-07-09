function pullDown() {

  // ユーザー管理
  const userPullDown = document.getElementById("user");
  const userMenu = document.querySelectorAll(".user-menu li");
  const userMenuPullDown = Array.prototype.slice.call(userMenu,0);
  const userName = document.getElementById("user-name");

  userMenuPullDown.forEach(function (element) {
    userPullDown.addEventListener("mouseover", function() {
      userName.setAttribute("style", "color: yellow;")
      element.setAttribute("style", "overflow: visible; height: 40px;");
    },false);
    userPullDown.addEventListener("mouseout", function() {
      userName.removeAttribute("style", "color: yellow;")
      element.removeAttribute("style", "overflow: visible; height: 40px;");
    });
  });

  
};

  
window.addEventListener('load', pullDown)