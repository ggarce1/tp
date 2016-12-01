angular
.module('TpPizzeria')
.controller('controlGrillaUser',function($scope,$http,$auth,$state, cargador, cargadorDeFoto, FileUploader)
{
  if($auth.isAuthenticated() && $auth.getPayload().tipo=="admin" || $auth.getPayload().tipo=="enca")  
  {	
      switch($auth.getPayload().tipo) {
		    case "admin":
		       	CargarGrilla();
		        break;
		    case "enca":
		        CargarGrillaLocal($auth.getPayload().id_local)		      
		        break;

		}

	}//fin if
	else
	{
		$state.go("carta");
	}//fin else

	$scope.Borrar=function(usuario)
	{
		cargador.EliminarUsuario(usuario);
		switch($auth.getPayload().tipo) {
		    case "admin":
		       	CargarGrilla();
		        break;
		    case "enca":
		        CargarGrillaLocal($auth.getPayload().id_local)		      
		        break;

		}


	};



	function CargarGrilla()
	{
		cargador.BuscarUsuarios().then(function(respuesta){

		$scope.ListadoProductos=respuesta;
		console.log(respuesta);
		});
	}

	function CargarGrillaLocal(id)
	{
		cargador.BuscarUsuarioPorLocal(id).then(function(respuesta){

		$scope.ListadoProductos=respuesta;
		console.log(respuesta);
		});
	}


});
