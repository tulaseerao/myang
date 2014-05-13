student.controller('StudentCtrl', [
  '$scope', '$location', '$http', function($scope, $location, $http) {
    $scope.students = [];
    $http.get('/stud_data').success(function(data) {
      $scope.students = data;
    });

    $scope.mypost = function(){
      // alert('coming here');
      var big_data = [];
      var data1 =
      {
        name: 'abcd',
        email: 'abcd@pgi.com'
      };
      big_data.push(data1);
     $http.post('/poster',big_data).success(function(data) {
       $scope.students = data;
    });

    };
  }
]);
