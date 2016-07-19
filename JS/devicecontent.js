$(document).ready(function(){	

	var str=window.location.href;
    var identifier= str.split("=");
    
		
	$.ajax({
        crossDomain: true,
            url: 'http://mmobilehypermedia.altervista.org/PHP/devicecontent.php',
        method: "POST",
        data: { id: identifier[1] },
		success: function(result){
        	var device = JSON.parse(result);
            var techline;
            var i;
            document.getElementById("breadcategory").innerHTML = device[0].Category;
            $('#breadcategory').attr('href', 'devicegrid.html#category='+wellformedcat(device[0].Category));
			document.getElementById("breaddevice").innerHTML = device[0].Brand +" "+ device[0].Name;
			document.getElementById("devbrandname").innerHTML = "<b>" + device[0].Brand + "</b>" +" "+ device[0].Name;
            $('#devimg').attr('src', device[0].Image);
            document.getElementById("presentation").innerHTML = device[0].Presentation;
            document.getElementById("price").innerHTML = "Price: "+device[0].FullPrice + instalment(device[0].Instalment);
            if(device[0].OutletPrice != null){
            	document.getElementById("outletprice").innerHTML = "Discount: "+ device[0].OutletPrice + instalment(device[0].Instalment);
           }
           techline = device[0].TechSpecs.split("\r\n");
            for(i=0;i<techline.length;i++){
            	var splitted = techline[i].split(":");
                var table = document.getElementById("techtable");
            	var row=table.insertRow(i);
                row.insertCell(0).innerHTML = splitted[0];
                row.insertCell(1).innerHTML = splitted[1];
            }
		}
	});
	
	function instalment(inst){
		if(inst == '1')
			return ' €/month';
		return ' €';
	}
    
    $.ajax({
        crossDomain: true,
            url: 'http://mmobilehypermedia.altervista.org/PHP/relatedassistance.php',
        method: "POST",
        data: { id: identifier[1] },
		success: function(result){
        	var asname = JSON.parse(result);
            for(i=0; i<asname.length; i++)
                if(asname[i].Active == '0')
                    $('#asservice').append(
                        $('<a>').attr('class','disabled').append(
                            asname[i].Name+"<br>"))
                else
                    $('#asservice').append(
                        $('<a>').attr('href', 'assistancecontent.html#id='+asname[i].ASID).append(
                            asname[i].Name+"<br>"))
        }
    });
    
    $.ajax({
        crossDomain: true,
            url: 'http://mmobilehypermedia.altervista.org/PHP/relatedsmartlife.php',
        method: "POST",
        data: { id: identifier[1] },
		success: function(result){
        	var slname = JSON.parse(result);
            for(i=0; i<slname.length; i++)
            	if(slname[i].isDevice=='0'){
                	if(slname[i].Active == '0')
                      $('#slservice').append(
                          $('<a>').attr('class','disabled').append(
                              slname[i].Name+"<br>"))
                    else
                        $('#slservice').append(
                            $('<a>').attr('href', smartlife(slname[i].SLID)).append(
                                slname[i].Name+"<br>"))}
                else{ if(slname[i].Active == '0')
                      $('#slservice').append(
                          $('<a>').attr('class','disabled').append(
                              slname[i].Category+"<br>"))
                    else
                        $('#slservice').append(
                            $('<a>').attr('href', smartlifecat(slname[i].Category)).append(
                                slname[i].Category+"<br>"))}
                
                
        }
    });
    
});

function smartlife(stm){
	if(stm == '2')
    	return 'M-MobileSKY.html';
    if(stm =='3')
    	return 'Netflix.html';
     if(stm =='4')
     	return 'SpotifyPremium.html';
     if(stm =='5')
     	return 'newspaper.html';
     if(stm =='6') 
     	return 'Magazine.html';
}

function smartlifecat(smt){
	switch (smt){
    	case 'TV & Entertainment':
        	return 'tventertainment.html';
            break;
        case 'Person':
        	return 'person.html';
            break;
        case 'Home & Family':
        	return 'homefamily.html';
            break;
         case 'Health & Fitness':
         	return 'healthfitness.html';
            break;
	}
}

function wellformedcat(cat){
	return "'"+cat+"'";
}