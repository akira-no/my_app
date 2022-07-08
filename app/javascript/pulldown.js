function pullDown() {

  // ユーザー管理
  const pullDownButton = document.getElementById("user-pulldown");
  const pullDownParents = document.getElementById("user-pulldown-list");

  pullDownButton.addEventListener('mouseover', function(){
    this.setAttribute("style", "color: yellow;");
    pullDownParents.setAttribute("style", "visibility: visible;");
  });
  
  pullDownButton.addEventListener('mouseout', function(){
    pullDownButton.removeAttribute("style", "color: yellow;");
    pullDownParents.removeAttribute("style", "visibility: visible;");
  });

  // ここから
  // pullDownButton.addEventListener('click', function(){

    // if (pullDownParents.getAttribute("style") == "display: block;"){
    //   pullDownParents.removeAttribute("style", "display: block;");
    // } else{
    //   pullDownParents.setAttribute("style", "display: block;");
    // };
    // ここまで呼び
  
  
};
window.addEventListener('load', pullDown)
// console.log("pulldown");