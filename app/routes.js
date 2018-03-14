(function () {
    'use strict';

    angular.module('app').config(RouteConfig);

    function RouteConfig($routeProvider) {

        $routeProvider.when('/list', {
            templateUrl : 'app/list.html',
            controller : 'ListCtrl',
            controllerAs : 'vm'
        }).when('/details/:id', {
            templateUrl : 'app/details.html',
            controller : 'DetailsCtrl',
            controllerAs : 'vm'
        }).otherwise('/list');

    }

})();