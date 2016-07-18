$(document).ready(function(){
	var str= window.location.href;
    var categ = str.split("=");
	document.getElementById('BCategory').innerHTML = cat(categ[1]);
    document.getElementById('TCategory').innerHTML= cat(categ[1]);
	
    $('.services').innerHTML = "";
    
    $.ajax({
		url: '../PHP/assist.php',
		method: "POST",
		data: { category: categ[1]},
		success: function(result){
        		var array = JSON.parse(result);
                $('.services').append(
                    "<h3>"+array[0].Category+"</h3>")
                $('.services').append(                    
                    "<legend>"+array[0].Subcategory+"</legend>")
                $('.services').append(
                    $('<div>').attr('class','servicetype').append(),
                    $('<ul>').attr('id',array[0].Subcategory).append())
                if(array[0].Active=='0')
                    $('#'+array[0].Subcategory).append(
                        $('<li>').append(
                            $('<a>').attr({"class":'disabled', "href": '#'}).append(
                                array[0].Name)))
                else $('#'+array[0].Subcategory).append(
                        $('<li>').append(
                            $('<a>').attr('href', 'assistancecontent.html#id='+array[0].ID).append(
                                array[0].Name)))
                
                for(i=1; i<array.length; i++){
                    if(array[i].Subcategory != array[i-1].Subcategory){
                        $('.services').append(
                            "<legend>"+array[i].Subcategory+"</legend>")
                        $('.services').append(
                            $('<div>').attr('class','servicetype').append(),
                            $('<ul>').attr('id',array[i].Subcategory).append())
                    }
                    if(array[i].Active=='0')
                    $('#'+array[i].Subcategory).append(
                        $('<li>').append(
                            $('<a>').attr({"class":'disabled', "href": '#'}).append(
                                array[i].Name)))
                    else $('#'+array[i].Subcategory).append(
                        $('<li>').append(
                            $('<a>').attr('href', 'assistancecontent.html#id='+array[i].ID).append(
                                array[i].Name)))
                 }
              }			
     });
});