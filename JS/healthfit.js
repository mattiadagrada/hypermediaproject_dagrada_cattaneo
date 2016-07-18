$(document).ready(function(){
	$.ajax({
        url: '../PHP/healthfit.php',
        method: "GET",
        dataType: "json",
		success: function(result){        
			var hf = JSON.parse(JSON.stringify(result));
			for(i=0; i<hf.length; i++){
				$('#hfImg'+i).attr('src', "/"+hf[i].Image);
				document.getElementById('hfName'+i).innerHTML = hf[i].Name;
                document.getElementById('hfBrand'+i).innerHTML = hf[i].Brand;
				document.getElementById('hfPresentation'+i).innerHTML = hf[i].Presentation;
            }
		}
	});
	;
});