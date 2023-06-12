<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="AngularOgreniyorum.Events" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <title></title>
        <script src="Assets/angular-1.8.2/angular.min.js"></script>
    </head>

    <body>

        <h2>Mouse Events</h2>
        <ul>
            <li>ng-mouseover</li>
            <li>ng-mouseenter</li>
            <li>ng-mousemove</li>
            <li>ng-mouseleave</li>
            <li>ng-mousedown</li>
            <li>ng-mouseup</li>
            <li>ng-click</li>
        </ul>

        <div>

            <div ng-app="application" ng-controller="controller">
                <!-- <h1 ng-mousemove="count = count + 1">DOKUNMA</h1> -->
                <h1 ng-click="count = count + 1">DOKUNMA</h1>
                <h3>{{count}} kere dokundu</h3>
            </div>



            <script>
                var app = angular.module('application', [])
                app.controller('controller', function ($scope) {
                    $scope.count = 0;

                })
            </script>
        </div>
    </body>

    </html>