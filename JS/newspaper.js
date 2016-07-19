$(document).ready(function(){
	$.ajax({
        crossDomain: true,
            url: 'http://mmobilehypermedia.altervista.org/PHP/newspaper.php',
        method: "GET",
        dataType: "json",
		success: function(result){        
			var np = JSON.parse(JSON.stringify(result));
			for(i=0; i<3; i++){
				$('#npImg'+i).attr('src', "/"+np[i].Image);
               	document.getElementById('npTitle'+i).innerHTML = np[i].Name;
            }
            for(i=0; i<np.length; i++){
				document.getElementById('npName'+i).innerHTML = np[i].Name;
                document.getElementById('npPrice'+i).innerHTML = np[i].FullPrice+" €/month";
            }
		}
	});
	
    $.ajax({
        crossDomain: true,
            url: 'http://mmobilehypermedia.altervista.org/PHP/relateddevsmartl.php',
        method: "POST",
        data: { name: "'Daily Newspaper'" },
		success: function(result){
        	var dev = JSON.parse(result);
            if(dev.length >0)
              for(i=0; i<dev.length; i++)
                  if(dev[i].Active == '0')
                      $('#relDev').append(
                          $('<li>').append(
                            $('<a>').attr('class','disabled').append(
                                dev[i].Name+"<br>")))
                  else
                      $('#relDev').append(
                          $('<li>').append(
                            $('<a>').attr('href', 'devicecontent.html#id='+dev[i].ID).append(
                               dev[i].Brand + dev[i].Name+"<br>")))
           else $('#relDev').append(
                          $('<li>').append(
                            $('<a>').attr('class', 'disabled').append(
                               "No related devices")))
        }
    });
});