function filterclick(){
	var str=window.location.href;
    var identifier= str.split("=");
    var categ = cat(identifier[1]);
    var array;
    var filterbrand=[];
    var filterprice=[];
    var filteros=[];
    var i;
    
    for(i = 0; document.getElementById('check'+i) != null ; i++)
    	if(document.getElementById('check'+i).checked){
            if( document.getElementById('check'+i).name == 'brand' )
                filterbrand.push("'"+document.getElementById('check'+i).value+"'");
            else if ( document.getElementById('check'+i).name == 'price' )
                filterprice.push(document.getElementById('check'+i).value);
            else if ( document.getElementById('check'+i).name == 'os' )
                filteros.push("'"+document.getElementById('check'+i).value+"'");
    }	
    $('.col-md-9').html("");
    if(identifier[1] != "'Outlet'"){
        $.ajax({
            crossDomain: true,
            url: 'http://mmobilehypermedia.altervista.org/PHP/filters.php',
            method: "POST",
            data: { category: identifier[1],
            		filterbrand: filterbrand,
                    filterprice: filterprice,
                    filteros: filteros
                  },
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
    }else{
          $.ajax({
                  crossDomain: true,
            url: 'http://mmobilehypermedia.altervista.org/PHP/outletfilter.php',
                  method: "POST",
                  data: { filterbrand: filterbrand,
                          filterprice: filterprice,
                          filteros: filteros
                  		},
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
}
  function price(inst){
      if(inst=='1')
          return ' €/month';
      else
          return' €'
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
