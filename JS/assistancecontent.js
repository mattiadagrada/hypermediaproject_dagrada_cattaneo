$(document).ready(function(){
	var str= window.location.href;
    var ident = str.split("=");
    
    $.ajax({
		crossDomain: true,
        url: 'http://mmobilehypermedia.altervista.org/PHP/assistcontent.php',
		method: "POST",
		data: { id: ident[1]},
		success: function(result){
        		var array = JSON.parse(result);
                var categ = "'"+array[0].Category+"'";
                $('#bccateg').attr('href','assistancecategory.html#category='+categ).append(array[0].Category)
                document.getElementById('bc').innerHTML = array[0].Name;
                document.title = array[0].Name;
                document.getElementById('title').innerHTML = array[0].Name;
                document.getElementById('description').innerHTML = array[0].Description;
              }			
     });
     
     $.ajax({
        crossDomain: true,
            url: 'http://mmobilehypermedia.altervista.org/PHP/relateddevass.php',
        method: "POST",
        data: { id: ident[1] },
		success: function(result){
        	var dev = JSON.parse(result);
            if(dev != null)
              for(i=0; i<dev.length; i++)
                  if(dev[i].Active == '0')
                      $('#relDev').append(
                          $('<li>').append(
                            $('<a>').attr('class','disabled').append(
                                dev[i].Name+"<br>")))
                  else
                      $('#relDev').append(
                          $('<li>').append(
                            $('<a>').attr('href', 'devicecontent.html#id='+dev[i].DeviceID).append(
                               dev[i].Brand + dev[i].Name+"<br>")))
           else $('#relDev').append(
                          $('<li>').append(
                            $('<a>').attr('class','disabled').append(
                                "No related devices")))
        }
    });
});