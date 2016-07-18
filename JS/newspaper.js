$(document).ready(function(){
	$.ajax({
        url: '../PHP/newspaper.php',
        method: "GET",
        dataType: "json",
		success: function(result){        
			var np = JSON.parse(JSON.stringify(result));
			for(i=0; i<3; i++){
				$('#npImg'+i).attr('src', "/"+np[i].Image);
               	document.getElementById('npTitle'+i).innerHTML = np[i].Name;
            }
            for(i=0; i<np.length; i++){
				document.getElementById('npName'+i).innerHTML = np[i].Name;
                document.getElementById('npPrice'+i).innerHTML = np[i].Price+" €/month";
            }
		}
	});
	;
});