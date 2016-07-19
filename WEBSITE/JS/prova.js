$(document).ready(function(){
	$.ajax({
        url: '../PHP/slider.php',
        method: "GET",
		success: function(result){        
			var imgpath = JSON.parse(result);
			for(i=0; i<imgpath.length; i++)
				$('#slider'+i).attr('src', "/"+imgpath[i].URL);
		}
	});
	
	$.ajax({
        url: '../PHP/deviceimages.php',
        method: "GET",
		success: function(result){        
			var device = JSON.parse(result);
			for(i=0; i<6; i++){
				$('#device'+i).attr('src', "/"+device[i].Image);
                document.getElementById('deviceBrand'+i).innerHTML = device[i].Brand;
                document.getElementById('deviceName'+i).innerHTML = device[i].Name;
             }
		}
	});
	
    $.ajax({
        url: '../PHP/logo.php',
        method: "GET",
		success: function(result){
        	var logo = JSON.parse(result);
        	document.getElementById('logo').src = "/"+ logo;
        }
	});
    
    $.ajax({
        url: '../PHP/spotify.php',
        method: "GET",
		success: function(result){
        	var spotify = JSON.parse(result);
        	document.getElementById('spotify').src = "/"+ spotify;
        }
	});
});

