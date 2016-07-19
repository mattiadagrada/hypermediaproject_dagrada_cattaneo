$(document).ready(function(){
	
        $.ajax({
        	crossDomain: true,
            url: 'mmobilehypermedia.altervista.org/PHP/alldevices.php',
            method: "GET",
            success: function(result){
                    var array = JSON.parse(result);
                    var i;
                    var j;
                    for(i=0, j=0; i<array.length-3; i++, j++){
                        $(genID(array[i].Category)).append(
                          $('<li>').attr('class', 'col-xs-3').append(
                           $('<div>').attr('class', 'device').append(
                             $('<div>').attr('class', 'caption').append(
                                 "<h4>"+array[i].Brand+"</h4>",
                                 "<p>"+array[i].Name+"</p>"),
                            $('<div>').attr('class', 'thumbnail').append(
                              "<img src="+array[i].Image+">"))))
                        if((j+1)%3==0)
                            $(genID(array[i].Category)).append(
                              $('<li>').attr('class', 'col-xs-3').append(
                                  $('<div>').attr('class', 'col three').append(
                                      $('<a>').attr({"href": 'devicegrid.html#category='+ wellformedcat(array[i].Category), "class": 'btn btn-blue'}).append("Show more"))))
                    }
                    for( ; i<array.length; i++, j++){
                    	$('#outletcol').append(
                          $('<li>').attr('class', 'col-xs-3').append(
                           $('<div>').attr('class', 'device').append(
                             $('<div>').attr('class', 'caption').append(
                                 "<h4>"+array[i].Brand+"</h4>",
                                 "<p>"+array[i].Name+"</p>"),
                           $('<div>').attr('class', 'thumbnail').append(
                              "<img src="+array[i].Image+">"))))
                        if((j+1)%3==0)
                            $('#outletcol').append(
                              $('<li>').attr('class', 'col-xs-3').append(
                                  $('<div>').attr('class', 'col three').append(
                                      $('<a>').attr({"href": 'devicegrid.html#category='+"'Outlet'", "class": 'btn btn-blue'}).append("Show more"))))
                    }
            }
     });
});

function wellformedcat(cat){
	return "'"+cat+"'";
}

function genID(category){
	switch (category){
    	case "SmartLiving":
			return '#smartcol';
			break;
		case "Smartphone": 
			return '#phonecol';
			break;
		case "Tablet": 
			return '#tabcol';
			break;
		case "Networking":
			return '#netcol';
			break;
         default: break;
	}		
}