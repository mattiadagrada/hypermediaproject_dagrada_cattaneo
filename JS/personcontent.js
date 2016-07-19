$(document).ready(function(){	
	var str=window.location.href;
    var n= str.split("=");
    
	$.ajax({
        crossDomain: true,
            url: 'http://mmobilehypermedia.altervista.org/PHP/personcontent.php',
        method: "POST",
        data: { name: n[1] },
		success: function(result){
        	var person = JSON.parse(result);
            document.getElementById("name").innerHTML = person[0].Name;
            document.getElementById("descr").innerHTML = person[0].Description;
            document.getElementById("actvrule").innerHTML = person[0].ActivationRule;
            document.getElementById("bc").innerHTML = person[0].Name;
            
            $('#pimg').attr('src', person[0].Image);
            document.title = person[0].Name;
		}
	});
    
    $.ajax({
        crossDomain: true,
            url: 'http://mmobilehypermedia.altervista.org/PHP/relateddevsmartl.php',
        method: "POST",
        data: { name: n[1] },
		success: function(result){
        	var dev = JSON.parse(result);
            if(dev.length > 0)
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