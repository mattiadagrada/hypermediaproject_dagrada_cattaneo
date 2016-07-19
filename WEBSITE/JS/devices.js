$(document).ready(function(){
	var str= window.location.href;
    var categ = str.split("=");
    var base = 4;
	document.getElementById('BCategory').innerHTML = cat(categ[1]);
    document.getElementById('TCategory').innerHTML= cat(categ[1]);
    
    
    $('.col-md-9').innerHTML = "";
    if(cat(categ[1]) != 'Outlet'){
        $.ajax({
            crossDomain: true,
            url: 'http://mmobilehypermedia.altervista.org/PHP/devices.php',
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
							}else{
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
        $.ajax({
                crossDomain: true,
            url: 'http://mmobilehypermedia.altervista.org/PHP/filterbrandbuilder.php',
                method: "POST",
                data: {category: categ[1]},
                  success: function(result){
                    var array = JSON.parse(result);
                    var i;
                    for(i=0; i<array.length; base++,i++)
                      $('#filterbrand').append(
                       "<input id='check"+(4+i)+"' type='checkbox' name='brand' value='"+array[i].Brand+"' onclick='filterclick()'>"+array[i].Brand+"<br>")
                    }
            });
            if(categ[1] !='SmartLiving')
            $.ajax({
                crossDomain: true,
            url: 'http://mmobilehypermedia.altervista.org/PHP/filterosbuilder.php',
                method: "POST",
                data: {category: categ[1]},
                  success: function(result){
                    var array = JSON.parse(result);
                    var i;
                    for(i=0; i<array.length; i++)
                      $('#filteros').append(
                   		"<input id='check"+(base+i)+"' type='checkbox' name='os' value='"+array[i].OS+"' onclick='filterclick()'>"+array[i].OS+"<br>")
                   }
			});
    }else{
             	$.ajax({
                  crossDomain: true,
            url: 'http://mmobilehypermedia.altervista.org/PHP/outlet.php',
                  method: "GET",
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
                            $('#cpt'+j).append(
                                $('<div>').attr({"class":'pricetag', "style": 'text-decoration: line-through;'}).append(
                                        array[j].FullPrice + price(array[j].Instalment))
                                )
                            $('#cpt'+j).append(
                                $('<div>').attr('class','pricediscount').append(
                                        array[j].OutletPrice + price(array[j].Instalment))
                                )
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
         
         
     }
});

function price(inst){
	if(inst=='1')
		return ' €/month';
	else
		return' €'
	}

function cat(category){
	switch (category){
    	case "'SmartLiving'":
           return 'TV & Smart Living';
           break;
		case "'Smartphone'": 
			return 'Smartphones & Cellphones';
			break;
		case "'Tablet'": 
			return 'Tablets & PCs';
			break;
		case "'Networking'":
			return 'Modem & Networking';
			break;
		case "'Outlet'":
			return 'Outlet';
			break;
	}		
}