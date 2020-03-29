<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
    <title>Instargram Sign Up</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $( function() {
            $( "#dobdatepicker" ).datepicker({
                maxDate: "-17y",
                dateFormat : "dd/mm/yy"
            });
        } );
    </script>
    <style type="text/css">
        body {
            color: #fff;
            background: #63738a;
            font-family: 'Roboto', sans-serif;
        }

        .form-control {
            height: 40px;
            box-shadow: none;
            color: #969fa4;
        }

        .form-control:focus {
            border-color: #5cb85c;
        }

        .form-control, .btn {
            border-radius: 3px;
        }

        .signup-form {
            width: 400px;
            margin: 0 auto;
            padding: 30px 0;
        }

        .signup-form h2 {
            color: #636363;
            margin: 0 0 15px;
            position: relative;
            text-align: center;
        }

        .signup-form h2:before, .signup-form h2:after {
            content: "";
            height: 2px;
            width: 30%;
            background: #d4d4d4;
            position: absolute;
            top: 50%;
            z-index: 2;
        }

        .signup-form h2:before {
            left: 0;
        }

        .signup-form h2:after {
            right: 0;
        }

        .signup-form .hint-text {
            color: #999;
            margin-bottom: 30px;
            text-align: center;
        }

        .signup-form form {
            color: #999;
            border-radius: 3px;
            margin-bottom: 15px;
            background: #f2f3f7;
            box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
            padding: 30px;
        }

        .signup-form .form-group {
            margin-bottom: 20px;
        }

        .signup-form input[type="checkbox"] {
            margin-top: 3px;
        }

        .signup-form .btn {
            font-size: 16px;
            font-weight: bold;
            min-width: 140px;
            outline: none !important;
        }

        .signup-form .row div:first-child {
            padding-right: 10px;
        }

        .signup-form .row div:last-child {
            padding-left: 10px;
        }

        .signup-form a {
            color: #fff;
            text-decoration: underline;
        }

        .signup-form a:hover {
            text-decoration: none;
        }

        .signup-form form a {
            color: #5cb85c;
            text-decoration: none;
        }

        .signup-form form a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="signup-form">
    <%--@elvariable id="userDto" type="org.spring.example.sharif.instragram.dto.UserDto"--%>
    <form:form action="${pageContext.request.contextPath}/register" method="post" modelAttribute="user">
        <h2>Register</h2>
        <p class="hint-text">Create your account. It's free and only takes a minute.</p>
        <div class="form-group">
            <div class="row">
                <div class="col-xs-12">
                    <form:input type="text" class="form-control"
                                name="full_name"
                                placeholder="Full Name"
                                required="required"
                                path="fullName"/>
                </div>
            </div>
        </div>
        <div class="form-group">
            <form:input type="email" class="form-control"
                        name="email"
                        placeholder="Email"
                        required="required"
                        path="email"/>
        </div>

        <div class="form-group">
            <form:input type="text" class="form-control"
                        name="user_name"
                        placeholder="User Name"
                        required="required"
                        path="username"/>
        </div>
        <div class="form-group">
            <form:input type="password" class="form-control"
                        name="password"
                        placeholder="Password"
                        required="required"
                        path="password"/>
        </div>

        <div class="form-group">

            <form:select path="gender" class="form-control" id="gender" >
                <form:options items="${genders}" />
            </form:select>

        </div>

<%--        <div class="form-group">--%>
<%--            <form:input id="dobdatepicker"--%>
<%--                        placeholder="DOB"--%>
<%--                        class= "form-control" path="dob"/>--%>

<%--        </div>--%>


        <div class="form-group">
            <button type="submit" class="btn btn-success btn-lg btn-block">
                Register Now
            </button>
        </div>

    </form:form>
    <div class="text-center">Already have an account?
        <a href="${pageContext.request.contextPath}/login">Sign in</a>
    </div>
</div>
</body>
</html>