(function() {
    angular.module("app").controller("d3Controller", d3Controller);
    d3Controller.$inject = ["$scope"];
    function d3Controller($scope) {
        var vm = this;

        // 0.1: Get Top Song
        // Sort List Song By View -> Top 1,2,3

        let filterSongByProps = (songs, propsName) => {
            return songs;
        };
    }
})();
