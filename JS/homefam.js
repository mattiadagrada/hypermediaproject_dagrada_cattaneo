$(document).ready(function(){
	$.ajax({
        crossDomain: true,
            url: 'http://mmobilehypermedia.altervista.org/PHP/homefam.php',
        method: "GET",
		success: function(result){        
			var hf = JSON.parse(result);
			for(i=0; i<hf.length; i++){
				$('#hfImg'+i).attr('src', hf[i].Image);
				$('#hfName'+i).append(hf[i].Name);
                $('#hfBrand'+i).append(hf[i].Brand);
				$('#hfPresentation'+i).append(hf[i].Presentation);
                if(hf[i].Active == '0')
                	$('#hftbn'+i).attr({"class": 'btn btn-blue  disabled', "href": '#'});
                else
                	$('#hftbn'+i).attr({"href": 'devicecontent.html#ID='+hf[i].ID, "class": 'btn btn-blue'});
            }	
		}
	});
});