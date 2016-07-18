$(document).ready(function(){
	var str= window.location.href;
    var categ = str.split("=");
	document.getElementById('BCategory').innerHTML = cat(categ[1]);
    document.getElementById('TCategory').innerHTML= cat(categ[1]);
	
    $('.col-md-9').innerHTML = "";
    
    $.ajax({
		url: '../PHP/devices.php',
		method: "POST",
		data: { category: categ[1]},
		success: function(result){
        		var array = JSON.parse(result);
                for(i=0; i<array.length; i=i+3){
                    $('.col-md-9').append(
                        $('<div>').attr({"class": 'row', "id": 'prova'+i}));
                 for(j=i; j<(i+3) && j<array.length; j++){
                 	$('#prova'+i).append(
                    	$('<div>').attr('class', 'col-xs-4').append(
							$('<div>').attr('class', 'device').append(
								$('<div>').attr({"class": 'caption', 'id': 'cpt'+j}).append(
								    "<h4>"+array[j].Brand+"</h4>",
								    "<p>"+array[j].Name+"</p>"))))
                    $('#cpt'+j).append( 
                        $('<div>').attr('class', 'thumbnail').append(
                                    "<img src="+array[j].Image+">"))
                    
                    if(array[j].OutletPrice!=null){
                    	$('#cpt'+j).append(
                            $('<div>').attr({"class":'pricetag', "style": 'text-decoration: line-through;'}).append(
                                    array[j].FullPrice + price(array[j].Instalment))
                            )
                        $('#cpt'+j).append(
                            $('<div>').attr('class','pricediscount').append(
                                    array[j].OutletPrice + price(array[j].Instalment))
                            )
                    }
                    else {
                    	$('#cpt'+j).append(
                            $('<div>').attr('class','pricetag').append(
                                    array[j].FullPrice + price(array[j].Instalment))
                            )
                        $('#cpt'+j).append(
                            $('<div>').attr('class','pricediscount').append(
                                    "<br>")
                            )
                    }
                    if(array[j].Active == '0')
                        $('#cpt'+j).append(
                            $('<div>').attr('class', 'row').append(
                                $('<div>').attr('class', 'col three').append(
                                    $('<a>').attr({"class": 'btn btn-blue', "href": 'devicecontent.html#ID='+array[j].ID}).append(
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
});

function price(inst){
	if(inst=='1')
		return '€/month';
	else
		return'€'
	}

function cat(category){
	switch (category){
		case "'Smartphone'": 
			return 'Smartphones & Cellphones';
			break;
		case "'Tablet'": 
			return 'Tablets & PCs';
			break;
		case "'Networking'":
			return 'Modem & Networking';
			break;
		case "'SmartLiving'":
			return 'TV & SmartLiving';
			break;
		case "'Outlet'":
			return 'Outlet';
			break;
         default: break;
	}		
}


