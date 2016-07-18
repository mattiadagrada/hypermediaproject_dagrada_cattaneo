$(document).ready(function(){	

	var str=window.location.href;
    var identifier= str.split("=");
    
		
	$.ajax({
        url: '../PHP/devicecontent.php',
        method: "POST",
        data: { id: identifier[1] },
		success: function(result){
        	var device = JSON.parse(result);
            var techline;
            var i;
            document.getElementById("breadcategory").innerHTML = device[0].Category;
			document.getElementById("breaddevice").innerHTML = device[0].Brand +" "+ device[0].Name;
            console.log(device[0].Brand +" "+ device[0].Name);
			document.getElementById("devbrandname").innerHTML = "<b>" + device[0].Brand + "</b>" +" "+ device[0].Name;
            $('#devimg').attr('src', device[0].Image);
            document.getElementById("presentation").innerHTML = device[0].Presentation;
            document.getElementById("price").innerHTML = "Price: "+device[0].FullPrice + instalment(device[0].Instalment);
            if(device[0].OutletPrice != null)
            	document.getElementById("outletprice").innerHTML = device[0].OutletPrice;
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
    
    -$.ajax({
        url: '../PHP/relatedassistance.php',
        method: "POST",
        data: { id: identifier[1] },
		success: function(result){
        	var asname = JSON.parse(result);
            for(i=0; i<asname.length; i++)
                if(asname[i].Active == '0')
                    $('#asservice').append(
                        $('<a>').attr('class', 'disabled').append(
                            asname[i].Name))
                else
                    $('#asservice').append(
                        $('<a>').append(
                            asname[i].Name))
        }
    });
    
    $.ajax({
        url: '../PHP/relatedsmartlife.php',
        method: "POST",
        data: { id: identifier[1] },
		success: function(result){
        	var slname = JSON.parse(result);
            for(i=0; i<slname.length; i++)
                if(slname[i].Active == '0')
                    $('#slservice').append(
                        $('<a>').attr('class', 'disabled').append(
                            slname[i].Name))
                else
                    $('#slservice').append(
                        $('<a>').append(
                            slname[i].Name))
        }
    });
    
});