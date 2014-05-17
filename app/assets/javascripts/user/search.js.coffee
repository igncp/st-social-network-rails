#= require angular/angular.min
#= require angular-animate/angular-animate.min
    
Search = angular.module('Search', [])

Search.controller('AppCtrl', ($scope, $http)->
    $scope.users = []

    $scope.search = ()->
        $http({method: 'GET', url: '/search/users/' + $scope.query}).success((data, status, headers, config)->
            console.log data

            # Excludes the current user id for displaying
            $scope.users = _.filter(data, (item)-> item.id != app.user_id )
        ).error((data, status, headers, config)->
            console.log 'error'
        )

)