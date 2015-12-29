function getData() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
      document.getElementById("textArea").innerHTML = xhttp.responseText;
    }
  }

  xhttp.open("GET", "data", true);
  xhttp.send();
}

document.addEventListener('DOMContentLoaded', function() {
  document.getElementById("button").addEventListener("click", getData);
}, false);
