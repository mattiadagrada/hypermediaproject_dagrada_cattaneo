$(document).ready(function(){
	$.ajax({
        crossDomain: true,
            url: 'http://mmobilehypermedia.altervista.org/PHP/tvent.php',
        method: "GET",
        dataType: "json",
		success: function(result){        
			var sl = JSON.parse(JSON.stringify(result));
			for(i=0; i<3; i++){
				$('#musicImg'+i).attr('src', "/"+sl[i].Image);
				document.getElementById('musicName'+i).innerHTML = sl[i].Name;
                document.getElementById('musicPresentation'+i).innerHTML = sl[i].Presentation;
             }
			 for(i=3; i<5; i++){
				$('#readingImg'+i).attr('src', "/"+sl[i].Image);
				document.getElementById('readingName'+i).innerHTML = sl[i].Name;
                document.getElementById('readingPresentation'+i).innerHTML = sl[i].Presentation;
             }
			 for(i=5; i<8; i++){
				$('#tvImg'+i).attr('src', "/"+sl[i].Image);
				document.getElementById('tvName'+i).innerHTML = sl[i].Name;
                document.getElementById('tvPresentation'+i).innerHTML = sl[i].Presentation;
             }
		}
	});
	;
});