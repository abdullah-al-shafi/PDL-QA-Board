<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Instagram</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/css/adminlte.min.css">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/plugins/daterangepicker/daterangepicker.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath }/plugins/summernote/summernote-bs4.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $( function() {
            $( ".datepicker" ).datepicker({
                maxDate: "-17y",
                dateFormat : "dd/mm/yy"
            });
        } );
    </script>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
        <!-- Left navbar links -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
            </li>
            <li class="nav-item d-none d-sm-inline-block">
                <a href="${pageContext.request.contextPath }/index" class="nav-link">Home</a>
            </li>
            <li class="nav-item d-none d-sm-inline-block">
                <a href="${pageContext.request.contextPath }/test/add" class="nav-link">Add Post</a>
            </li>
            <li class="nav-item d-none d-sm-inline-block">
                <a href="${pageContext.request.contextPath }/profile/show-profile" class="nav-link">Profile</a>
            </li>
            <li class="nav-item d-none d-sm-inline-block">
                <a href="${pageContext.request.contextPath }/logout" class="nav-link">Logout</a>
            </li>
        </ul>
        <!-- Right navbar links -->
        <ul class="navbar-nav ml-auto">
            <!-- Messages Dropdown Menu -->
            <li class="nav-item dropdown">
                <a class="nav-link" data-toggle="dropdown" href="#">

                    <span class="badge badge-danger navbar-badge"></span>
                </a>
                <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                    <a href="#" class="dropdown-item">
                        <!-- Message Start -->
                        <div class="media">

                            <div class="media-body">
                                <h3 class="dropdown-item-title">

                                    <span class="float-right text-sm text-danger"></span>
                                </h3>
                                <p class="text-sm"></p>
                                <p class="text-sm text-muted"></p>
                            </div>
                        </div>
                        <!-- Message End -->
                    </a>
                    <div class="dropdown-divider"></div>
                    <a href="#" class="dropdown-item">
                        <!-- Message Start -->
                        <div class="media">

                            <div class="media-body">
                                <h3 class="dropdown-item-title">

                                    <span class="float-right text-sm text-muted"></span>
                                </h3>
                                <p class="text-sm"></p>
                                <p class="text-sm text-muted"> </p>
                            </div>
                        </div>
                        <!-- Message End -->
                    </a>
                    <div class="dropdown-divider"></div>
                    <a href="#" class="dropdown-item">
                        <!-- Message Start -->
                        <div class="media">

                            <div class="media-body">
                                <h3 class="dropdown-item-title">

                                    <span class="float-right text-sm text-warning"></span>
                                </h3>
                                <p class="text-sm"></p>
                                <p class="text-sm text-muted"></p>
                            </div>
                        </div>
                        <!-- Message End -->
                    </a>
                    <div class="dropdown-divider"></div>
                    <a href="#" class="dropdown-item dropdown-footer"></a>
                </div>
            </li>
            <!-- Notifications Dropdown Menu -->
            <li class="nav-item dropdown">
                <a class="nav-link" data-toggle="dropdown" href="#">

                    <span class="badge badge-warning navbar-badge"></span>
                </a>
                <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                    <span class="dropdown-item dropdown-header"></span>
                    <div class="dropdown-divider"></div>
                    <a href="#" class="dropdown-item">

                        <span class="float-right text-muted text-sm"></span>
                    </a>
                    <div class="dropdown-divider"></div>
                    <a href="#" class="dropdown-item">

                        <span class="float-right text-muted text-sm"></span>
                    </a>
                    <div class="dropdown-divider"></div>
                    <a href="#" class="dropdown-item">

                        <span class="float-right text-muted text-sm"></span>
                    </a>
                    <div class="dropdown-divider"></div>
                    <a href="#" class="dropdown-item dropdown-footer"></a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#">

                </a>
            </li>
        </ul>
    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
        <!-- Brand Logo -->
        <a href="index3.html" class="brand-link">
            <img src="${pageContext.request.contextPath}/dist/img/insta.jpg" alt="Instagram" class="brand-image img-circle elevation-3" style="opacity: .8">
            <span class="brand-text font-weight-light">Instagram</span>
        </a>

        <!-- Sidebar -->
        <div class="sidebar">
            <!-- Sidebar user panel (optional) -->
            <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                <div class="image">
                    <img class="img-circle img-bordered-sm"
                         src="${pageContext.request.contextPath }${user.profilePic}">
                </div>
                <div class="info">
                    <a href="" class="d-block">${username} </a>
                </div>
            </div>

            <!-- Sidebar Menu -->
            <nav class="mt-2">
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                    <!-- Add icons to the links using the .nav-icon class
                         with font-awesome or any other icon font library -->
                    <li class="nav-item has-treeview menu-open">
                        <a href="${pageContext.request.contextPath }/profile/show-profile" class="nav-link active">
                            <i class="nav-icon fas fa-tachometer-alt"></i>
                            Profile
                        </a>
                    </li>
                    <li class="nav-item has-treeview menu-open">
                        <a href="${pageContext.request.contextPath }/test/add" class="nav-link active">
                            <i class="nav-icon fas fa-tachometer-alt"></i>
                            Add Post
                        </a>
                    </li>
                </ul>
            </nav>
            <!-- /.sidebar-menu -->
        </div>
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0 text-dark"></h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->