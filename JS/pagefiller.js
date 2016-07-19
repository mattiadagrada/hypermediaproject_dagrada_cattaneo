$(document).ready(function(){
	$.ajax({
       crossDomain: true,
            url: 'http://mmobilehypermedia.altervista.org/PHP/slider.php',
        method: "GET",
		success: function(result){        
			var imgpath = JSON.parse(result);
			for(i=0; i<imgpath.length; i++)
				$('#slider'+i).attr('src', imgpath[i].URL);
		}
	});
	
	$.ajax({
        crossDomain: true,
            url: 'http://mmobilehypermedia.altervista.org/PHP/deviceimages.php',
        method: "GET",
		success: function(result){        
			var device = JSON.parse(result);
			for(i=0; i<6; i++){
				$('#device'+i).attr('src', device[i].Image);
                document.getElementById('deviceBrand'+i).innerHTML = device[i].Brand;
                document.getElementById('deviceName'+i).innerHTML = device[i].Name;
                if(device[i].Active =='0')
                    $('#deviceID'+i).attr({"href": 'devicecontent.html#id='+device[i].ID, "class": 'disabled'});
                else $('#deviceID'+i).attr('href', 'devicecontent.html#id='+device[i].ID);
             }
		}
	});
	
   
    $.ajax({
        crossDomain: true,
            url: 'http://mmobilehypermedia.altervista.org/PHP/spotify.php',
        method: "GET",
		success: function(result){
        	var spotify = JSON.parse(result);
        	document.getElementById('spotify').src = spotify;
        }
	});
});

