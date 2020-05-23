function insertTable(array){

  let tableContent = "<table><tr> <th> Objet de la database </th> </tr>";

  for(let i = 0 ; i< array.length ; i++){
    tableContent+= "<tr><td>" + array[i].objet_nom + "</td></tr>";
  }
    tableContent+= "</table>";
  document.getElementById("main").innerHTML = tableContent;
}
function getObjet(){
	let xhttp = new XMLHttpRequest();

	xhttp.onreadystatechange = function() {
         if (this.readyState == 4 && this.status == 200) {
        	let response = JSON.parse(this.responseText);
					console.log(response);
					insertTable(response);
        }
	};

	xhttp.open("GET", "https://b2b.wt2-1.ephec-ti.be/api/objet", true);
  xhttp.send();
}
