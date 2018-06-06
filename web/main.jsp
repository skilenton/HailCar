<%-- 
    Document   : main
    Created on : Jun 5, 2018, 6:25:29 PM
    Author     : cs183p-cc1-08
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="assets/jquery-3.3.1.js" type="text/javascript"></script>
        <script src="assets/js/bootstrap.js" type="text/javascript"></script>
        <title>CarHail Main</title>
        <style>
            body {
            overflow-x: hidden;
          }

          #wrapper {
            padding-left: 0;
            -webkit-transition: all 0.5s ease;
            -moz-transition: all 0.5s ease;
            -o-transition: all 0.5s ease;
            transition: all 0.5s ease;
          }

          #wrapper.toggled {
            padding-left: 250px;
          }

          #sidebar-wrapper {
            z-index: 1000;
            position: fixed;
            left: 250px;
            width: 0;
            height: 100%;
            margin-left: -250px;
            overflow-y: auto;
            background: #000;
            -webkit-transition: all 0.5s ease;
            -moz-transition: all 0.5s ease;
            -o-transition: all 0.5s ease;
            transition: all 0.5s ease;
          }

          #wrapper.toggled #sidebar-wrapper {
            width: 250px;
          }

          #page-content-wrapper {
            width: 100%;
            position: relative;
            padding: 15px;
          }

          #wrapper.toggled #page-content-wrapper {
            position: absolute;
            margin-right: -250px;
          }
          .map,.overlay{
              width: 100%;
                height: 100%;
                position: absolute;
                top: 0;
                left: 0;
          }
          .overlay{
              z-index: 10;
          }

          /* Sidebar Styles */

          .sidebar-nav {
            position: absolute;
            top: 0;
            width: 250px;
            margin: 0;
            padding: 0;
            list-style: none;
          }

          .sidebar-nav li {
            text-indent: 20px;
            line-height: 40px;
          }

          .sidebar-nav li a {
            display: block;
            text-decoration: none;
            color: #999999;
          }

          .sidebar-nav li a:hover {
            text-decoration: none;
            color: #fff;
            background: rgba(255, 255, 255, 0.2);
          }

          .sidebar-nav li a:active, .sidebar-nav li a:focus {
            text-decoration: none;
          }

          .sidebar-nav>.sidebar-brand {
            height: 65px;
            font-size: 18px;
            line-height: 60px;
          }

          .sidebar-nav>.sidebar-brand a {
            color: #999999;
          }

          .sidebar-nav>.sidebar-brand a:hover {
            color: #fff;
            background: none;
          }
          

          @media(min-width:768px) {
            #wrapper {
              padding-left: 0;
            }
            #wrapper.toggled {
              padding-left: 250px;
            }
            #sidebar-wrapper {
              width: 0;
            }
            #wrapper.toggled #sidebar-wrapper {
              width: 250px;
            }
            #page-content-wrapper {
              padding: 20px;
              position: relative;
            }
            #wrapper.toggled #page-content-wrapper {
              position: relative;
              margin-right: 0;
            }
          }
        </style>
    </head>
    <body>
        <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                        CarHail
                    </a>
                </li>
                <li>
                    <div>
                        <a href="#">Location:</a>
                        <input class="form-control">
                    </div>
                </li>
                <li>
                    <a href="#">Destination: <input class="form-control"></a>
                </li>
                <li>
                    <input type="submit"class="form-control">
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->
        <div id="page-content-wrapper">
            <div class="map" id="googleMap" style="width:100vw;height:100vh;"></div>
            <div class="overlay">
                <span href="#menu-toggle" class="btn btn-primary" id="menu-toggle">MENU</span>
            </div>
        </div>
    </body>
    <script>
        function myMap() {
        var mapProp= {
            center:new google.maps.LatLng(14.5624,121.0215),
            zoom:15,
        };
        var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
        }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?callback=myMap"></script>
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>

</html>
