<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JsonGet.aspx.cs" Inherits="AngularOgreniyorum.JsonGet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <script src="Assets/angular-1.8.2/angular.min.js"></script>
    <link rel="stylesheet" href="Assets/bootstrap-5.3.0/css/bootstrap.min.css">
</head>

<body>
    <div class="container">

        <div class="card">

            <div class="card-header">
                <h1>Müşteriler</h1>
            </div>
            <div ng-app="list" ng-controller="verigetir">

                <div class="card-body">

                    <div class="row">
                        <input type="text" ng-model="myFilter">
                    </div>

                </div>



                <table class="table table-bordered table-striped">

                    <thead>
                        <tr>
                            <th ng-click="orderByMe('id')">id</th>
                            <th ng-click="orderByMe('title')">title</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr ng-repeat="x in kategoriler | orderBy:siralamam | filter:myFilter">
                            <td>{{x.id}}</td>
                            <td>{{x.title}}</td>
                        </tr>
                    </tbody>

                </table>

            </div>




            <!-- 
                <ul>
                    <li ng-repeat="x in veri">

                        {{x.Name+' , ' + x.City + ' , ' + x.Country}}

                    </li>
                </ul> -->

        </div>

    </div>

    <!-- <script>

            var app = angular.module("list", [])
            app.controller('verigetir', function ($scope, $http) {
                $http.get("customers.json").then(function (response) {
                    $scope.veri = response.data.records
                })

                $scope.orderByMe = function (x) {
                    $scope.siralamam = x;
                }

            });

        </script> -->


    <script>
        var app = angular.module("list", [])
        app.controller('verigetir', function ($scope, $http) {

            $http({
                method: "GET",
                url: "http://jsonplaceholder.typicode.com/posts"
            }).then(function (resp) {
                $scope.kategoriler = resp.data;
            });


            //$http.get('customers.json').then(function (response) {
            //    $scope.veri = response.data.records;
            //});


            $scope.orderByMe = function (x) {
                $scope.siralamam = x;
            }



        });
    </script>

</body>

</html>
