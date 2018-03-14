(function () {
    'use strict';

    var app = angular.module('app', []);
    app.controller('C1', Ctrl);
    function Ctrl($http) {
        var vm = this; // View model
        this.items = [];
        this.myVar = 3;
        this.newItem = '';

        init();
        function init() {
            $http.get('api/tasks').then(function (result){
                vm.items = result.data;
            });
        };


        this.increase = function(){
            this.myVar++;
        };
        this.addItem = function(){
            var newItemObj = {
                title: this.newItem,
                done: false
            };
            $http.post('api/tasks', newItemObj).then(init);
            this.newItem = '';
        };
    };
})();

