<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="APIVeriCekme.aspx.cs" Inherits="AngularOgreniyorum.APIVeriCekme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
                                <th ng-click="orderByMe('$index')">no</th>
                                <th ng-click="orderByMe('Name')">Isim</th>
                                <th ng-click="orderByMe('City')">Şehir</th>
                                <th ng-click="orderByMe('Country')">Ülke</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr ng-repeat="x in veri | orderBy:siralamam | filter:myFilter">

                                <td>{{x.ID}}</td>
                                <td>{{x.CategoryName}}</td>
                                <td>{{x.Description}}</td>
                            </tr>
                        </tbody>

                    </table>

                </div>




            </div>

        </div>

        

        <script>
            var app = angular.module("list", [])
            app.controller('verigetir', function ($scope, $http, $interval) {
                $interval(function () {
                    $http.get('http://www.veksisbusiness.com/api/categories').then(function (response) {
                        $scope.veri = response.data.records;
                    });
                }, 1000);
            });
        </script>
</body>
</html>
