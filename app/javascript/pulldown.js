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

  // 新規登録
  const registerPullDown = document.getElementById("register");
  const registerMenu = document.querySelectorAll(".register-full li");
  const registerMenuPullDown = Array.prototype.slice.call(registerMenu,0);
  const registerMain = document.getElementById("register-main");

  registerPullDown.addEventListener("click", function() {
    if (registerPullDown.getAttribute("style") == "background-color: aqua;"){
      registerPullDown.removeAttribute("style", "background-color: aqua;");
      registerMain.removeAttribute("style", "height: 300px;");
      registerMenuPullDown.forEach(function (element) {
        element.removeAttribute("style", "visibility: visible; top: 100%; opacity: 1;");
      });
     } else {
      registerPullDown.setAttribute("style", "background-color: aqua;");
      registerMain.setAttribute("style", "height: 400px;");
      registerMenuPullDown.forEach(function (element) {
        element.setAttribute("style", "visibility: visible; top: 100%; opacity: 1;");
      });
    };
  });

};

  
window.addEventListener('load', pullDown)