$(document).ready(function(){
	var str= window.location.href;
    var categ = str.split("=");
	
    $('.services').innerHTML = "";
    
    $.ajax({
		crossDomain: true,
            url: 'http://mmobilehypermedia.altervista.org/PHP/assist.php',
		method: "POST",
		data: { category: categ[1]},
		success: function(result){
        		var array = JSON.parse(result);
                var i;
                var j = 0;
                document.getElementById('bc').innerHTML = array[0].Category;
                document.title = array[0].Category;
                
                $('.services').append(
                    "<h3>"+array[0].Category+"</h3>")
                $('.services').append(                    
                    "<legend>"+array[0].Subcategory+"</legend>")
                $('.services').append(
                    $('<div>').attr('class','servicetype').append(
                   		$('<ul>').attr('id', j).append()))
                if(array[0].Active=='0')
                    $('#'+j).append(
                        $('<li>').append(
                            $('<a>').attr({"class":'disabled', "href": '#'}).append(
                                array[0].Name)))
                else $('#'+j).append(
                        $('<li>').append(
                            $('<a>').attr('href', 'assistancecontent.html#id='+array[0].ID).append(
                                array[0].Name)))
                
                for(i=1; i<array.length; i++){
                    if(array[i].Subcategory != array[i-1].Subcategory){
                    	j++;
                        $('.services').append(
                            "<legend>"+array[i].Subcategory+"</legend>")
                        $('.services').append(
                            $('<div>').attr('class','servicetype').append(
                            	$('<ul>').attr('id',j).append()))
                    }
                    
                    if(array[i].Active=='0')
                    $('#'+j).append(
                        $('<li>').append(
                            $('<a>').attr({"class":'disabled', "href": '#'}).append(
                                array[i].Name)))
                    else $('#'+j).append(
                        $('<li>').append(
                            $('<a>').attr('href', 'assistancecontent.html#id='+array[i].ID).append(
                                array[i].Name)))
                 }
              }			
     });
});