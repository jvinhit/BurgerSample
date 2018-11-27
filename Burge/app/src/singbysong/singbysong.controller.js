(function() {
    angular
        .module("app")
        .controller("SingBySongController", SingBySongController);
    SingBySongController.$inject = ["$scope", "$rootScope", "$filter" ];
    function SingBySongController($scope, $rootScope, $filter) {
        var vm = this;
        vm.songs = [
            {
                title: "Chạy Ngay Đi",
                singer: "Son Tuong MTP",
                views: 10000,
                publishDate: "20/11/2012"
            },
            {
                title: "Đừng Vội Vàng",
                singer: "Chi Pu Cu",
                views: 1000,
                publishDate: "20/01/2018"
            },
            {
                title: "Tôi là Tôi",
                singer: "Quách Thành Tương",
                views: 10000,
                publishDate: "14/11/2013"
            },
            {
                title: "Chạy Ngay Đi",
                singer: "Son Tuong MTP",
                views: 10000,
                publishDate: "20/11/2012"
            },
            {
                title: "Chạy Ngay Đi",
                singer: "Son Tuong MTP",
                views: 10000,
                publishDate: "20/11/2012"
            },
            {
                title: "Chạy Ngay Đi",
                singer: "Son Tuong MTP",
                views: 10000,
                publishDate: "20/11/2012"
            }
        ];
        vm.songFilterInput = "";

        var sortListByProps = (listinput, key) => {};
    }
})();
