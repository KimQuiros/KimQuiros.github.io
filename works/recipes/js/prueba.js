var Recipes=(function(){
	var jsonObj;
	var indice=0;
	var name_Category=[];
	var favorites= [];
	favorites.push('Final');
	Array.prototype.unique=function(a){
	  return function(){return this.filter(a)}}(function(a,b,c){return c.indexOf(a,b+1)<0
	});

	function ajaxRequest(){
		var mygetrequest =new XMLHttpRequest();
		mygetrequest.onreadystatechange = function(){
		  if (mygetrequest.readyState === 4 &&  mygetrequest.status == 200){
		    jsonObj = JSON.parse(mygetrequest.responseText);
		    for(var i=0; i < jsonObj.data.length;i++){
		    	name_Category.push(jsonObj.data[i].category);
		    }
		    printCategory()
		    //console.log(jsonObj.data);
		  }
		} 
		mygetrequest.open("GET", "php/all.php", true);
		mygetrequest.send();
	};
	ajaxRequest();

	function printContent(arrayRecipes, inicio){
		var contents="";
		var back;
		var front;
			for (var i = 0; i < arrayRecipes.length; i++){ 
		 	indice=i;
		 	if(i === 0){
		 		front='<div class="front"><h1 class="front-title">'+inicio+'</h1></div>'
		 	}else{
		 		front='<div class="front front'+i+'"><span class="subtitle front-subtitle">Ingredientes: </span><p class="front-text">'+arrayRecipes[i-1].ingredients+'</p></div>';
		 	}
		 	if(i == (arrayRecipes.length-1)){
		 		back='<div class="back"><h1>Final</h1></div>';
		 	}else {
		 		back='<div class="back back'+i+'"><img class="back-img" src="'+arrayRecipes[i].image+'"><div id="'+arrayRecipes[i].name+'" class="button-favorite-book" onclick="Recipes.favoriteRecipe(this.id)"><img class="buttom-favorite-book-img" src="img/favorite.png"></div><h1 class="back-title">'+arrayRecipes[i].name+'</h1><span class="back-porc">+'+arrayRecipes[i].portions+'porc</span><span class="subtitle back-subtitle">Pasos: </span><p class="back-text">'+arrayRecipes[i].steps+'</p></div>';
		 	}
		        contents+='<section class="page">'+front+back+'</section>';
		 }
		 document.getElementById('book').innerHTML=contents+'<div id="indice" class="content-indice"></div>';
		 classActive(0);
		 printIndex(arrayRecipes,inicio);
	}

	function classActive(indice){
		if(indice != 0){
			var page=document.getElementsByClassName('page');
			for(var i=0;i<page.length;i++){
				if(i < indice){
					document.getElementsByClassName('page')[i].className="page flipped";
				}else{
					document.getElementsByClassName('page')[i].className="page";
				}
			}
			document.getElementsByClassName('page')[indice].className="page active";
		}else{
			document.getElementsByClassName('page')[indice].className="page active";
		}
	}

	function printIndex(arrayRecipes,inicio){
		var names_index="";
		var list_recipes="";
		 for (var i = 0; i < arrayRecipes.length; i++){
		 	if(i != (arrayRecipes.length-1)){
		 		names_index+='<li class="list-recipes-item" onclick="Recipes.classActive('+(i+1)+')">'+arrayRecipes[i].name+'</li>';
		 	}
		 }
		 list_recipes='<h1>Indice '+inicio+'</h1><ul class="list-recipes">'+names_index+'</ul><div>';
		 document.getElementById('indice').innerHTML=list_recipes;
	}
	function printCategory(){
		var category="";
		//console.log(name_Category);
		for(var i=0;i<name_Category.length;i++){
			if(name_Category.unique()[i] != undefined){
				category +='<li class="container-category-list-items" id="'+name_Category.unique()[i]+'"onclick="Recipes.recipesCategory(this.id)"><img class="container-category-list-items-img" src="img/'+name_Category.unique()[i]+'.jpg"/><h2 class="container-list-items-title">'+name_Category.unique()[i]+'</h2></li>';
			}
		}
		document.getElementById("category").innerHTML='<h2 class="container-category-title">Categorias</h2><ul class="container-category-list">'+category+'</ul>';
	}
	function recipesCategory(category){
		var arrayCategory=[];
		//console.log(category);
		for(var i=0;i<jsonObj.data.length;i++){
			if( category == jsonObj.data[i].category){
		 		arrayCategory.push(jsonObj.data[i]);
		 	}
		 }
		 arrayCategory.push("Final");
		 printContent(arrayCategory, category);
		 //console.log(arrayCategory);
	}

	function favoriteRecipe(name){
		for(var i =0;i<jsonObj.data.length;i++){
			if(name == jsonObj.data[i].name){
				if(jsonObj.data[i].favorite == 0){
					jsonObj.data[i].favorite=1;
					favorites.unshift(jsonObj.data[i]);
					changeImgFavorite(name);
				}else{
					for(var m =0;m<favorites.length;m++){
						if(name == favorites[m].name){
							favorites[m].favorite=0;
							favorites.splice(m,1);
						}
					}
					changeImgFavorite(name);
				}
			}
		}
	 }

	 function changeImgFavorite(name){
	 	for(var i =0;i<jsonObj.data.length;i++){
	 		if(name == jsonObj.data[i].name){
	 			if(jsonObj.data[i].favorite == 1){
					document.getElementById(jsonObj.data[i].name).style.background="url(img/favorite.png)no-repeat";
					document.getElementById(jsonObj.data[i].name).style.background="#000";
				}else{
					document.getElementById(jsonObj.data[i].name).style.background="url(img/no-favorite.png)no-repeat";
					document.getElementById(jsonObj.data[i].name).style.background="#000";
				}
	 		}
		}
	 }

	 function printFavorites(){
	 	if (favorites.length != 1) {
	 		printContent(favorites, "Favoritos");
	 	}
	 }

	 function downloadFavorites(){
	 	var list_favorites="";
	 	for(var i=0; i <favorites.length;i++){
	 		if(favorites[i].name != undefined){
	 			list_favorites+='<li class="list-favorite-item"><h2 class="category-title">'+favorites[i].name+'</h2><button id="'+favorites[i].name+'" class="button-download"  download="contenido.txt" onclick="Recipes.downloadInfo(this.id)"><img class="img-download" src="img/download.png"></button></li>';
	 		}
	 	}
	 	document.getElementById('content-favorites-list').innerHTML='<ul class="list-favorite"><h3 class="content-favorites-list-title">Lista de Descargas:</h3>'+list_favorites+'</ul>';
	 }

	 function downloadInfo(name){
	 	var info = [];
	 	var filename = name + ".txt";
		for (var i = 0; i <favorites.length; i++) {
			if(name == favorites[i].name){
				info.push("Nombre: ");
				info.push(favorites[i].name+"%0D%0A");
				info.push("Prociones: ");
				info.push(favorites[i].portions+"%0D%0A");
				info.push("Descripcion: " +"%0D%0A");
				info.push(favorites[i].description+"%0D%0A");
				info.push("Ingredientes: "+"%0D%0A");
				info.push(favorites[i].ingredients.replace(/<br>/g, "%0D%0A"));
				info.push("Pasos: "+"%0D%0A");
				info.push(favorites[i].steps.replace(/<br>/g, "%0D%0A"));
			}	
		}
		var txtString = info.join("%0A");
		var a        = document.createElement("a")
		a.href       = 'data:text/plain;charset=utf-8,' + txtString;
		a.target      = '_blank';
		a.download    = filename;

		document.body.appendChild(a);
		a.click();
	 }
	return{
		recipesCategory:recipesCategory,
		favoriteRecipe:favoriteRecipe,
		printFavorites:printFavorites,
		downloadFavorites:downloadFavorites,
		downloadInfo:downloadInfo,
		classActive:classActive
	}

})();