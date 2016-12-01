angular
.module('TpPizzeria')
.controller('controlReportes',function($scope, $http, $auth, $state,cargador)
{
	if($auth.isAuthenticated() && $auth.getPayload().tipo=="admin" || $auth.getPayload().tipo=="enca")  
  	{
		$scope.GenerarPdf=function()
		{
			window.open('PHP/plantillapdf.php');
		};
		$scope.GenerarExcel=function()
		{
			window.open('PHP/rep_excel.php');	
		};

	}else
	{
		$state.go("carta");

	}


});