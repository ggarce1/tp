angular
.module('TpPizzeria')
.controller('controlMenu', function($scope, $http, $auth, $state,FileUploader) {
	$scope.DatoTest="**Menu**";
	$scope.usuario={};

	//console.info($auth.isAuthenticated(), $auth.getPayload());
	$scope.altaPro=false;
	$scope.listaPro=false;
	$scope.listUser=false;
	$scope.report=false;
	$scope.altaCliente=false;
	$scope.altaPersonal=false;
	$scope.altaLocal=false;
	$scope.estadistica=false;
	$scope.mapa=false;
	$scope.listClie=false;




	if($auth.isAuthenticated())	
	{
		$scope.usuario.nombre=$auth.getPayload().correo;
		switch($auth.getPayload().tipo) {
		    case "comp":
		        break;
		    case "admin":
		        $scope.altaPro=true;
				$scope.listaPro=true;
				$scope.listUser=true;
				$scope.listClie=true;
				$scope.report=true;
				$scope.altaCliente=true;
				$scope.altaPersonal=true;
				$scope.estadistica=true;
				$scope.mapa=true;
				$scope.altaLocal=true;
		        break;
		    case "emple":
		        $scope.altaPro=true;
				$scope.altaCliente=true;
				$scope.listClie=true;
		        break;
		    case "enca":
		        $scope.altaPro=true;
				$scope.listPro=true;
				$scope.listUser=true;
				$scope.altaCliente=true;
				$scope.altaPersonal=true;
				$scope.listClie=true;
		        break;

		}

		$scope.Logout=function()
		{
			$auth.logout()
			.then(function()
			{
				$state.go("login");
			});
		};
	}
	else
	{
		$state.go("login");
	}
	$scope.crearCuenta=function()
	{
		$state.go("altaUser");
	};
});
