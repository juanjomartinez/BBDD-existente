$(document).ready(function(){

	var dias = new Array();
	var ultimo = -1;
	limpiar();

	function limpiar(){
		$(".dia").removeClass("seleccionado");
		$(".dia").addClass("noseleccionado");
		for(i=0;i<31;i++){
			dias[i] = 'no';
		}
	}

	function mostrar(){
		alert(dias);
	}
	
	function include(vector, elem){
		for(var i=0;i<vector.length;i++){
			if(vector[i]==elem) return true;
		}
		return false;
	}

	$(".dia").hover(
		function(){
			$(this).animate({ opacity: 0.4 }, "fast");
		},
		function(){
			$(this).animate({ opacity: 1 }, "fast");
		}
	);

	$(".dia").click(function(e){
		if(e.ctrlKey){
			if(include($(this).attr("class").split(" "),"noseleccionado")){
				$(this).removeClass("noseleccionado");
				$(this).addClass("seleccionado");
				dias[parseInt($(this).attr("id").substr(4))-1] = 'si';
				ultimo = parseInt($(this).attr("id").substr(4))-1;
			}
			else if(include($(this).attr("class").split(" "),"seleccionado")){
				$(this).removeClass("seleccionado");
				$(this).addClass("noseleccionado");
				dias[parseInt($(this).attr("id").substr(4))-1] = 'no';
				ultimo = parseInt($(this).attr("id").substr(4))-1;
			}
		}
		else if(e.shiftKey){
			if(ultimo!=-1){
				if(ultimo<parseInt($(this).attr("id").substr(4))-1){
					for(i=ultimo+1;i<parseInt($(this).attr("id").substr(4));i++){
						$("#dia_"+(i+1)).removeClass("noseleccionado");
						$("#dia_"+(i+1)).addClass("seleccionado");
						dias[i] = 'si';
					}
				}else{
					for(i=parseInt($(this).attr("id").substr(4)-1);i<ultimo;i++){
						$("#dia_"+(i+1)).removeClass("noseleccionado");
						$("#dia_"+(i+1)).addClass("seleccionado");
						dias[i] = 'si';
					}
				}
			}else{
				limpiar();
				$(this).removeClass("noseleccionado");
				$(this).addClass("seleccionado");
				dias[parseInt($(this).attr("id").substr(4))-1] = 'si';
				ultimo = parseInt($(this).attr("id").substr(4))-1;
			}
		}
		else{
			limpiar();
			$(this).removeClass("noseleccionado");
			$(this).addClass("seleccionado");
			dias[parseInt($(this).attr("id").substr(4))-1] = 'si';
			ultimo = parseInt($(this).attr("id").substr(4))-1;
		}
	});

	$("#boton_comprobar").click(function(){
		var seleccionados = new Array();
		var j=0;
		for(var i=0;i<dias.length;i++){
			if(dias[i]=='si') seleccionados[j++] = i+1;
		}
		alert(seleccionados);
	});

});
