angular.module('phonecat.head-controller', [
  'phonecat.title-service'
]).controller('HeadCtrl', function($scope, TitleSvc){
  $scope.title = TitleSvc.title;
});
