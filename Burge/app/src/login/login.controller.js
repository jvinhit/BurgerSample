(function() {
    angular.module("app").controller("loginController", loginController);
    loginController.$inject = ["$scope"];
    function loginController($scope) {
        var vm = this;
        vm.user = {
            username: "",
            password: "",
            email: ""
        };
        vm.submitLogin = function() {
            console.log(vm.user);
        };
    }
})();
