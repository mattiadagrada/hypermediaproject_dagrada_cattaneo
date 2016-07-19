$(document).ready(function(){  
    
    $.ajax({
		crossDomain: true,
            url: 'http://mmobilehypermedia.altervista.org/PHP/promotions.php',
		method: "GET",
		success: function(result){
        	var array = JSON.parse(result);
             for(i=0; i<array.length; i=i+3){
                 $('#promo').append(
                     $('<div>').attr({"class": 'row', "id": 'prova'+i}));
                 for(j=i; j<(i+3) && j<array.length; j++){
                 	if(array[j].Brand != null){
                        $('#prova'+i).append(
                            $('<div>').attr('class', 'col-xs-4').append(
                                $('<div>').attr('class', 'device').append(
                                    $('<div>').attr({"class": 'caption', 'id': 'cpt'+j}).append(
                                        "<h4>"+array[j].Brand+"</h4>",
                                        "<p>"+array[j].Name+"</p>"))))
                        $('#cpt'+j).append( 
                        $('<div>').attr('class', 'thumbnail').append(
                                    "<img src="+array[j].Image+">"))
                   
                       $('#cpt'+j).append(
                           $('<div>').attr({"class":'pricetag', "style": 'text-decoration: line-through;'}).append(
                               array[j].FullPrice + instalment(array[j].Instalment))
                           )
                        $('#cpt'+j).append(
                          $('<div>').attr('class','pricediscount').append(
                             array[j].OutletPrice + instalment(array[j].Instalment))
                          )
                    }else if(array[j].Subcategory != null){
                    	$('#prova'+i).append(
                    	$('<div>').attr('class', 'col-xs-4').append(
							$('<div>').attr('class', 'device').append(
								$('<div>').attr({"class": 'caption', 'id': 'cpt'+j}).append(
								    "<h4>"+array[j].Subcategory+"</h4>",
								    "<p>"+array[j].Name+"</p>"))))
                        $('#cpt'+j).append( 
                            $('<div>').attr('class', 'thumbnail').append(
                                        "<img src="+array[j].Image+">"))

                       $('#cpt'+j).append(
                           $('<div>').attr({"class":'pricetag'}).append(
                               array[j].FullPrice + instalment(array[j].Instalment))
                           )
                        $('#cpt'+j).append(
                          $('<div>').attr('class','pricediscount').append(
                             array[j].OutletPrice)
                          )
                    }
                    if(array[j].Active == '0')
                        $('#cpt'+j).append(
                            $('<div>').attr('class', 'row').append(
                                $('<div>').attr('class', 'col three').append(
                                    $('<a>').attr({"class": 'btn btn-blue disabled', "href": '#'}).append(
                                        "More details"))))
                    else $('#cpt'+j).append(
                            $('<div>').attr('class', 'row').append(
                                $('<div>').attr('class', 'col three').append(
                                    $('<a>').attr({"class": 'btn btn-blue', "href": 'devicecontent.html#ID='+array[j].ID}).append(
                                        "More details"))))
                 }
              }
         }
			
     });

	function instalment(inst){
		if(inst == '1')
			return ' €/month';
		return ' €';
	}    
});