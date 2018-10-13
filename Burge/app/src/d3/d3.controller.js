(function() {
    angular.module("app").controller("d3Controller", d3Controller);
    d3Controller.$inject = ["$scope"];
    function d3Controller($scope) {
        var vm = this;
        vm.message = "This is d3 js";
        const array = [2, 3, 4, 5];
        vm.person = [{ name: "Vinh" }, { name: "Thuy" }];

        vm.val = array.reduce((acc, currentVal) => {
            return acc + currentVal;
        }, 1);
    }
})();
