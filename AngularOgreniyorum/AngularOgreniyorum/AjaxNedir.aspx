<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxNedir.aspx.cs" Inherits="AngularOgreniyorum.AjaxNedir" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <title></title>
        <script src="Assets/angular-1.8.2/angular.min.js"></script>
    </head>

    <body>

        <div ng-app="uygulamam" ng-controller="kontrolum">
            <p>Tanımlamaları Getir</p>
            <span>Data: {{tanimlama}}</span><br>
            <span>Status: {{statuscode}}</span><br>
            <span>StatusText: {{statusText}}</span>
        </div>

        <div>
            <h3>Metotlar</h3>
            <ul>
                <li>.delete()</li>
                <li>.get()</li>
                <li>.head()</li>
                <li>.patch()</li>
                <li>.post()</li>
                <li>.put()</li>
            </ul>
        </div>



        <!-- 
        <script>

            var app = angular.module('uygulamam', []);
            app.controller('kontrolum', function ($scope, $http) {

                $http.get("Merhaba.html").then(function (murtaza) {//genelde respons yada data kullanılır
                    $scope.tanimlama = murtaza.data;
                });
            });

        </script> -->


        <script>

            var app = angular.module('uygulamam', []);
            app.controller('kontrolum', function ($scope, $http) {

                $http({
                    method: "GET",
                    url: "Merhaba.html"
                }).then(function basarili(response) {
                    $scope.tanimlama = response.data;
                    $scope.statuscode = response.status;
                    $scope.statusText = response.statusText;
                },function basarisiz(response) {
                    $scope.tanimlama = response.statusText;
                });

            });

        </script>

    </body>

    </html>