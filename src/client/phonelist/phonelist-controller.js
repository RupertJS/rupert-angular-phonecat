function PhoneListController($http){
  this.phones = [];
  this.orderProp = 'age';

  $http.get('/phones').success(function(data){
    this.phones = data;
  }.bind(this));
}

PhoneListController.$inject = [
  '$http'
];

angular.module('phonecat.phonelist-controller', [

]).controller('PhoneListController', PhoneListController);
