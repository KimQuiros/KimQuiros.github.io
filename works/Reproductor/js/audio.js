var Reproductor = (function(){
	var array_song="";
	var array_size;
	function ajaxRequest(){
	var mygetrequest =new XMLHttpRequest();
	mygetrequest.onreadystatechange = function(){
	  if (mygetrequest.readyState === 4 &&  mygetrequest.status == 200){
	    var jsonObj = JSON.parse(mygetrequest.responseText);
	    var list_item = "";
	    for (var i = 0; i < jsonObj.Songs.length; i++) { 
	    	array_song=jsonObj.Songs; 
	    	array_size=jsonObj.Songs.length-1; 
	      list_item += "<li class='list-song-item'><button id='play-song' class='play-song' onclick='Reproductor.playSong("+i+")'><img class='play-img' src='img/triangulo.png'/><audio id='demo"+i+"'><source src='"+jsonObj.Songs[i].url+"' type='audio/mp3'/></audio></button><h2 class='title-color'>"+array_song[i].song+" - "+array_song[i].singer+"</h2></li>";
	    };
	    document.getElementById("content-list").innerHTML = list_item;
	  }
	}
	mygetrequest.open("GET", "js/songs-list.json", true);
	mygetrequest.send();
};
ajaxRequest();
  
//Funcionalidad de los botones 
	var id; 
	var audio;
	var list=[];
	var actual_song;
	var volumeValue = 0.5;

	function playSong(n){ 
		actual_song = n;
		id = 'demo'+n+'';
		audio = document.getElementById(id);
		for(i=0; i < array_song.length; i++){		
			if(n==i){
				document.getElementById("song").innerHTML=array_song[i].song+" - "+array_song[i].singer;
				document.getElementById("img-song").innerHTML = '<img class="img-songs-play" src="'+array_song[i].img+'">';
				document.getElementsByClassName("title-color")[i].style.color="#F24B51";

				audio.play();
			}else{
				document.getElementById("demo"+i).pause();
				document.getElementById('demo'+i).currentTime = 0;
				document.getElementsByClassName("title-color")[i].style.color="#fff";
			}
		}
		audio.onended = function() {
		    playSong(n+1);
		};
	}

	function playAll(){
		playSong(0);
		
	}
	function play(){
		audio.play();
	}
	function pause(){
		audio.pause();
	}
	function next(){
	  var next_song;
	  if(actual_song==array_size){
	  	next_song=actual_song-array_size;
	  }else{
	 	next_song=actual_song+1;
	  }
	  Reproductor.playSong(next_song);
	}
	function preview(){
		var preview_song;
	  if(actual_song==0){
	  	preview_song=actual_song+array_size;
	  }else{
	 	preview_song=actual_song-1;
	  }
	  Reproductor.playSong(preview_song);
	}
	function volume(volume){
		if(volume){
			volumeValue += 0.1;
		}else{
			volumeValue -= 0.1;
		}
		if(volumeValue > 1){
			volumeValue = 1;
		}else if(volumeValue < 0){
			volumeValue = 0;
		}
		audio.volume = volumeValue;
	}

	return{
		playSong:playSong,
		playAll:playAll,
		play:play,
		pause:pause, 
		next:next,
		preview:preview,
		volume:volume
	}
})();