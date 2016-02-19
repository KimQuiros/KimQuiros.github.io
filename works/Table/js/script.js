var table = (function(window, undefined){
 	var value="";
 	var array=[];
	var row=5;
	var colums=9;
	function printTable(){
		var table=document.getElementById("table");
		var tr="";
		var th="";
		th+='<th class="th-small"></th>';
		for(j=0;j<colums;j++){
			th+='<th>'+String.fromCharCode(j+65)+'</th>';
		}
		for(i = 0; i < row; i++){
			tr+='<tr id="'+(i+1)+'"><th class="th-small">'+(i+1)+'</th>';
			for(h=0;h<colums;h++){
				tr+='<td class="filas" id="'+(i+1)+'-'+(h+1)+'" ondblclick="table.editTable(this.id)"></td>';
			} 
			tr+='</tr>';
		}
		table.innerHTML=th+tr;
		getInfo();
	}
	function addRow(){
		var contador = row;
		document.getElementById('add').onclick = function(){
			var table = document.getElementById("table");
		  var body = table.createTBody();
		  var tr = ""; 
		  contador = contador + 1;
			for(i = 0; i < 1; i++){
				tr+='<tr id="'+contador+'"><th class="th-small">'+(contador)+'</th>';
				for(h=0;h<colums;h++){
					tr+='<td class="filas" id="'+(contador)+'-'+(h+1)+'" ondblclick="table.editTable(this.id)"></td>';
				} 
				tr+='</tr>'; 
			}
		  body.innerHTML = tr; 
    }
  }; 
  function searchtable(){
	var table = document.getElementById('table');
	var search = document.getElementById('search').value.toLowerCase();
	var cellsOfRow = "";
	var found = false;
	var compare = "";
 
	for (var i = 1; i < table.rows.length; i++){
		cellsOfRow = table.rows[i].getElementsByTagName('td');
		found = false;
		for (var j = 0; j < cellsOfRow.length && !found; j++){
			compare = cellsOfRow[j].innerHTML.toLowerCase();
			if (search.length == 0 || (compare.indexOf(search) > -1)){
				found = true;
			}
		}
		if(found){
			table.rows[i].style.display = '';
		} else {
		  table.rows[i].style.display = 'none';
		}
	}
}
function editTable(id){
	document.getElementById(id).contentEditable = true;
}
function saveInfo(){
	var filas=document.getElementsByClassName("filas");
	var text=[];
	for(i=0; i<filas.length; i++){
		if(filas[i].innerText !== ""){
			text.push(filas[i].innerText);
		}
	}
	if (typeof(Storage) != "undefined") {
		if(text !== ""){
			localStorage.setItem("Text", text);
		}
  }else{
    document.getElementById("filas").innerHTML = "Sorry, your browser does not support Web Storage...";
  }
  getInfo();
}
function getInfo(){
  array = localStorage.getItem("Text").split(",");
	for(i=0;i<array.length;i++){
		value+='<li class="list '+i+'">'+array[i]+'</li>';
	}
   	document.getElementById("filas").innerHTML=value;
};
function dowloadInfo(){
	var cvs = [];
	var row = 0;
	for (; row <array.length; row++) {
		cvs.push(array[row]);
	}
	var cvsSting = cvs.join("%0A");
	var a        = document.createElement("a")
	a.href       = 'data:image/png,'+"img/logo.png";

	document.body.appendChild(a);
	a.click();
	}
	window.dowloadInfo = dowloadInfo;
		printTable();
		addRow();

	return{
		printTable:printTable,
		addRow:addRow,
		searchtable:searchtable,
		editTable:editTable,
		saveInfo:saveInfo,
		getInfo:getInfo,
		dowloadInfo:dowloadInfo
	}
})(window);  

