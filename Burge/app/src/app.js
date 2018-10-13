(function() {
    angular
        .module("app")
        .config(function($locationProvider) {
            $locationProvider.html5Mode(false);
        })
        .config(routeConfigs)
        .run(runBlock);

    routeConfigs.$inject = [
        "$stateProvider",
        "$urlRouterProvider",
        "$locationProvider"
    ];
    runBlock.$inject = [];

    function routeConfigs(
        $stateProvider,
        $urlRouterProvider,
        $locationProvider
    ) {
        $urlRouterProvider.otherwise("/d3");
        $stateProvider
            .state("d3", {
                url: "/d3",
                templateUrl: "./app/src/d3/d3.tpl.html",
                controller: "d3Controller",
                controllerAs: "vm"
            })
            .state("login", {
                url: "/login",
                templateUrl: "./app/src/login/login.tpl.html",
                controller: "loginController",
                controllerAs: "vm"
            });
    }
    function runBlock() {}
})();
