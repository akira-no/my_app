function pullDown() {

  // ユーザー管理
  const pullDownButton = document.getElementById("user-pulldown");
  const pullDownParents = document.getElementById("user-pulldown-list");

  pullDownButton.addEventListener('mouseover', function(){
    this.setAttribute("style", "color:yellow;");
  });
  pullDownButton.addEventListener('mouseout', function(){
    this.removeAttribute("style", "color:yellow;");
  });
  pullDownButton.addEventListener('click', function(){

    if (pullDownParents.getAttribute("style") == "display: block;"){
      pullDownParents.removeAttribute("style", "display: block;");
    } else{
      pullDownParents.setAttribute("style", "display: block;");
    };
  });
  
  
};

window.addEventListener('load', pullDown)
// console.log("pulldown");