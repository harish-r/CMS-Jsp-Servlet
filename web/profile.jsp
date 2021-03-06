<%-- 
    Document   : profile
    Created on : Mar 19, 2015, 11:14:39 PM
    Author     : Harish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="cms.util.DBConnection" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
    <%
        String username = session.getAttribute("username").toString();
        Connection con = DBConnection.connect();
        try {
            String query = "SELECT * FROM users WHERE username = ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, username);
            System.out.println("String set");
            ResultSet rs = ps.executeQuery();
    %>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Profile</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">
    <!-- Morris Charts CSS -->
    <link href="css/morris.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Dashboard</a>
            </div>
            
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                <li class="dropdown">
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li class="">
                        <a href="index.html"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                    </li>
                    <li class="active">
                        <a href="profile.jsp"><i class="fa fa-fw fa-dashboard"></i> View Profile</a>
                    </li>
                    <li class="">
                        <a href="settings.html"><i class="fa fa-fw fa-dashboard"></i> Settings</a>
                    </li>
                    <li class="" style="left:30px;">
                        <form action="">
                            <button>
                                <i class="fa fa-fw fa-dashboard"></i> Logout</a>
                            </button>
                        </form>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper">

            <div class="container-fluid">

                <div class="row" style="height:800px;">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="fa fa-money fa-fw"></i>Profile</h3>
                            </div>
                            <div class="panel-body">
                                    <div class="table-responsive">
                                        <% System.out.println("Inside Table"); %>
                                        <table class="table table-bordered table-hover table-striped">
                                            <tr>
                                                <td>User ID: </td>
                                                <% System.out.println("Inside Table"); %>
                                                <td><%= rs.getInt("uid") %></td>
                                            </tr>
                                            <tr>
                                                <td>Full Name: </td>
                                                <% System.out.println(rs.getString("fullname")); %>
                                                <td><%= rs.getString("fullname") %></td>
                                            </tr>
                                            <tr>
                                                <td>Username: </td>
                                                <% System.out.println(rs.getString("username")); %>
                                                <td><%= rs.getString("username") %></td>
                                            </tr>
                                            <tr>
                                                <td>Email ID: </td>
                                                <% System.out.println("Inside Table"); %>
                                                <td><%= rs.getString("emailid") %></td>
                                            </tr>
                                        </table>
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                                   } catch (Exception e){
                                       e.printStackTrace();
                                   }
                %>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="js/morris/raphael.min.js"></script>
    <script src="js/morris/morris.min.js"></script>
    <script src="js/morris/morris-data.js"></script>

</body>
</html>
