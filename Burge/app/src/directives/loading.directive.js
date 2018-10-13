(function() {
    angular.module("app").directive("loaderDirective", loaderDirective); // loader-directive :))
    function loaderDirective() {
        return {
            restrict: "AE",
            templateUrl: "./app/src/directives/loading.directive.html",
            link: function($scope, $element, $attribute) {}
        };
    }
})();
