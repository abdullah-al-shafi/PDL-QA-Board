<%--@elvariable id="userDto" type="org.spring.example.sharif.instragram.dto.UserDto"--%>
<%--
  Created by IntelliJ IDEA.
  User: Sharif
  Date: 3/6/2020
  Time: 3:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
<html>
<head>
    <title>Title</title>
    <style>
        :root {
            font-size: 10px;
        }

        *,
        *::before,
        *::after {
            box-sizing: border-box;
        }

        body {
            font-family: "Open Sans", Arial, sans-serif;
            min-height: 100vh;
            background-color: #fafafa;
            color: #262626;
            padding-bottom: 3rem;
        }

        img {
            display: block;
        }

        .container {
            max-width: 93.5rem;
            margin: 0 auto;
            padding: 0 2rem;
        }

        .btn {
            display: inline-block;
            font: inherit;
            background: none;
            border: none;
            color: inherit;
            padding: 0;
            cursor: pointer;
        }

        .btn:focus {
            outline: 0.5rem auto #4d90fe;
        }

        .visually-hidden {
            position: absolute !important;
            height: 1px;
            width: 1px;
            overflow: hidden;
            clip: rect(1px, 1px, 1px, 1px);
        }

        /* Profile Section */

        .profile {
            padding: 5rem 0;
        }

        .profile::after {
            content: "";
            display: block;
            clear: both;
        }

        .profile-image {
            float: left;
            width: calc(33.333% - 1rem);
            display: flex;
            justify-content: center;
            align-items: center;
            margin-right: 3rem;
        }

        .profile-image img {
            border-radius: 50%;
            width: 200px;
            height: 200px;
        }

        .profile-user-settings,
        .profile-stats,
        .profile-bio {
            float: left;
            width: calc(66.666% - 2rem);
        }

        .profile-user-settings {
            margin-top: 1.1rem;
        }

        .profile-user-name {
            display: inline-block;
            font-size: 3.2rem;
            font-weight: 300;
        }

        .profile-edit-btn {
            font-size: 1.4rem;
            line-height: 1.8;
            border: 0.1rem solid #dbdbdb;
            border-radius: 0.3rem;
            padding: 0 2.4rem;
            margin-left: 2rem;
        }

        .profile-settings-btn {
            font-size: 2rem;
            margin-left: 1rem;
        }

        .profile-stats {
            margin-top: 2.3rem;
        }

        .profile-stats li {
            display: inline-block;
            font-size: 1.6rem;
            line-height: 1.5;
            margin-right: 4rem;
            cursor: pointer;
        }

        .profile-stats li:last-of-type {
            margin-right: 0;
        }

        .profile-bio {
            font-size: 1.6rem;
            font-weight: 400;
            line-height: 1.5;
            margin-top: 2.3rem;
        }

        .profile-real-name,
        .profile-stat-count,
        .profile-edit-btn {
            font-weight: 600;
        }

        /* Gallery Section */

        .gallery {
            display: flex;
            flex-wrap: wrap;
            margin: -1rem -1rem;
            padding-bottom: 3rem;
        }

        .gallery-item {
            position: relative;
            flex: 1 0 22rem;
            margin: 1rem;
            color: #fff;
            cursor: pointer;
        }

        .gallery-item:hover .gallery-item-info,
        .gallery-item:focus .gallery-item-info {
            display: flex;
            justify-content: center;
            align-items: center;
            position: absolute;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.3);
        }

        .gallery-item-info {
            display: none;
        }

        .gallery-item-info li {
            display: inline-block;
            font-size: 1.7rem;
            font-weight: 600;
        }

        .gallery-item-reactions {
            margin-right: 2.2rem;
        }

        .gallery-item-type {
            position: absolute;
            top: 1rem;
            right: 1rem;
            font-size: 2.5rem;
            text-shadow: 0.2rem 0.2rem 0.2rem rgba(0, 0, 0, 0.1);
        }

        .fa-clone,
        .fa-comment {
            transform: rotateY(180deg);
        }

        .gallery-image {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        /* Loader */

        .loader {
            width: 5rem;
            height: 5rem;
            border: 0.6rem solid #999;
            border-bottom-color: transparent;
            border-radius: 50%;
            margin: 0 auto;
            animation: loader 500ms linear infinite;
        }

        /* Media Query */

        @media screen and (max-width: 40rem) {
            .profile {
                display: flex;
                flex-wrap: wrap;
                padding: 4rem 0;
            }

            .profile::after {
                display: none;
            }

            .profile-image,
            .profile-user-settings,
            .profile-bio,
            .profile-stats {
                float: none;
                width: auto;
            }

            .profile-image img {
                width: 7.7rem;
            }

            .profile-user-settings {
                flex-basis: calc(100% - 10.7rem);
                display: flex;
                flex-wrap: wrap;
                margin-top: 1rem;
            }

            .profile-user-name {
                font-size: 2.2rem;
            }

            .profile-edit-btn {
                order: 1;
                padding: 0;
                text-align: center;
                margin-top: 1rem;
            }

            .profile-edit-btn {
                margin-left: 0;
            }

            .profile-bio {
                font-size: 1.4rem;
                margin-top: 1.5rem;
            }

            .profile-edit-btn,
            .profile-bio,
            .profile-stats {
                flex-basis: 100%;
            }

            .profile-stats {
                order: 1;
                margin-top: 1.5rem;
            }

            .profile-stats ul {
                display: flex;
                text-align: center;
                padding: 1.2rem 0;
                border-top: 0.1rem solid #dadada;
                border-bottom: 0.1rem solid #dadada;
            }

            .profile-stats li {
                font-size: 1.4rem;
                flex: 1;
                margin: 0;
            }

            .profile-stat-count {
                display: block;
            }
        }

        /* Spinner Animation */

        @keyframes loader {
            to {
                transform: rotate(360deg);
            }
        }

        /*

        The following code will only run if your browser supports CSS grid.

        Remove or comment-out the code block below to see how the browser will fall-back to flexbox & floated styling.

        */

        @supports (display: grid) {
            .profile {
                display: grid;
                grid-template-columns: 1fr 2fr;
                grid-template-rows: repeat(3, auto);
                grid-column-gap: 3rem;
                align-items: center;
            }

            .profile-image {
                grid-row: 1 / -1;
            }

            .gallery {
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(22rem, 1fr));
                grid-gap: 2rem;
            }

            .profile-image,
            .profile-user-settings,
            .profile-stats,
            .profile-bio,
            .gallery-item,
            .gallery {
                width: auto;
                margin: 0;
            }

            @media (max-width: 40rem) {
                .profile {
                    grid-template-columns: auto 1fr;
                    grid-row-gap: 1.5rem;
                }

                .profile-image {
                    grid-row: 1 / 2;
                }

                .profile-user-settings {
                    display: grid;
                    grid-template-columns: auto 1fr;
                    grid-gap: 1rem;
                }

                .profile-edit-btn,
                .profile-stats,
                .profile-bio {
                    grid-column: 1 / -1;
                }

                .profile-user-settings,
                .profile-edit-btn,
                .profile-settings-btn,
                .profile-bio,
                .profile-stats {
                    margin: 0;
                }
            }
        }

    </style>
</head>
<body>
<header>

    <div class="container">

        <div class="profile">

            <div class="profile-image">

                <img src="${pageContext.request.contextPath }${userDto.profileImage}"
                     alt="">

            </div>

            <div class="profile-user-settings">
                <form:form method="get" action="${pageContext.request.contextPath}/user/profile/edit/${userDto.userId}">
                    <h1 class="profile-user-name">${userDto.username}</h1>

                    <button class="btn profile-edit-btn " type="submit">Edit Profile</button>

                    <button class="btn profile-settings-btn" aria-label="profile settings"><i class="fas fa-cog"
                                                                                              aria-hidden="true"></i>
                    </button>
                </form:form>
            </div>

            <div class="profile-stats">

                <ul>
                    <li><span class="profile-stat-count">164</span> posts</li>
                    <li><span class="profile-stat-count">188</span> followers</li>
                    <li><span class="profile-stat-count">206</span> following</li>
                </ul>

            </div>

            <div class="profile-bio">

                <p><span class="profile-real-name">${userDto.fullName}</span> Lorem ipsum dolor sit, amet consectetur
                    adipisicing
                    elit 📷✈️🏕️</p>

            </div>

        </div>
        <!-- End of profile section -->

    </div>
    <!-- End of container -->

</header>

<main>

    <div class="container">

        <div class="gallery">
            &lt;%&ndash;@elvariable id="postListByLoginUser" type="java.util.List"&ndash;%&gt;
            &lt;%&ndash;@elvariable id="post" type="org.spring.example.sharif.instragram.model.Post"&ndash;%&gt;
            <c:forEach items="${postListByLoginUser}" var="post">

                <div class="gallery-item" tabindex="0">

                    <img src="${pageContext.request.contextPath}${post.postImage}"
                         class="gallery-image" alt="">

                    <div class="gallery-item-info">

                        <ul>
                            <li class="gallery-item-reactions"><span class="visually-hidden">Likes:</span><i
                                    class="fas fa-heart" aria-hidden="true"></i> 56
                            </li>
                            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i
                                    class="fas fa-comment" aria-hidden="true"></i> 2
                            </li>
                        </ul>

                    </div>

                </div>
            </c:forEach>


        </div>
        <!-- End of gallery -->

        &lt;%&ndash;<div class="loader"></div>&ndash;%&gt;

    </div>
    <!-- End of container -->

</main>
</body>
</html>
--%>


<html>
<head>
    <title>Title</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
        body{
            background: -webkit-linear-gradient(left, #3931af, #00c6ff);
        }
        .emp-profile{
            padding: 3%;
            margin-top: 3%;
            margin-bottom: 3%;
            border-radius: 0.5rem;
            background: #fff;
        }
        .profile-img{
            text-align: center;
        }
        .profile-img img{
            width: 70%;
            height: 100%;
        }
        .profile-img .file {
            position: relative;
            overflow: hidden;
            margin-top: -20%;
            width: 70%;
            border: none;
            border-radius: 0;
            font-size: 15px;
            background: #212529b8;
        }
        .profile-img .file input {
            position: absolute;
            opacity: 0;
            right: 0;
            top: 0;
        }
        .profile-head h5{
            color: #333;
        }
        .profile-head h6{
            color: #0062cc;
        }
        .profile-edit-btn{
            border: none;
            border-radius: 1.5rem;
            width: 70%;
            padding: 2%;
            font-weight: 600;
            color: #6c757d;
            cursor: pointer;
        }
        .proile-rating{
            font-size: 12px;
            color: #818182;
            margin-top: 5%;
        }
        .proile-rating span{
            color: #495057;
            font-size: 15px;
            font-weight: 600;
        }
        .profile-head .nav-tabs{
            margin-bottom:5%;
        }
        .profile-head .nav-tabs .nav-link{
            font-weight:600;
            border: none;
        }
        .profile-head .nav-tabs .nav-link.active{
            border: none;
            border-bottom:2px solid #0062cc;
        }
        .profile-work{
            padding: 14%;
            margin-top: -15%;
        }
        .profile-work p{
            font-size: 12px;
            color: #818182;
            font-weight: 600;
            margin-top: 10%;
        }
        .profile-work a{
            text-decoration: none;
            color: #495057;
            font-weight: 600;
            font-size: 14px;
        }
        .profile-work ul{
            list-style: none;
        }
        .profile-tab label{
            font-weight: 600;
        }
        .profile-tab p{
            font-weight: 600;
            color: #0062cc;
        }
    </style>
</head>
<body>

<!------ Include the above in your HEAD tag ---------->

<div class="container emp-profile">
    &lt;%&ndash;@elvariable id="userDto" type="org.spring.example.sharif.instragram.dto.UserDto"&ndash;%&gt;
    <form:form method="get" action="${pageContext.request.contextPath}/user/profile/edit/${userDto.userId}">
        <div class="row">
            <div class="col-md-4">
                <div class="row">
                    <div class="col-sm-2">
                        <a href="#" class="pull-left">
                            <img title="profile image" class="img-circle img-responsive"
                                 src="${pageContext.request.contextPath }${userDto.profileImage}"
                            &lt;%&ndash;src="http://www.gravatar.com/avatar/28fd20ccec6865e2d5f0e1f4446eb7bf?s=100"&ndash;%&gt;
                            />
                        </a>
                    </div>
                </div>

            </div>
            <div class="col-md-6">
                <div class="profile-head">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="home-tab"
                               data-toggle="tab" href="#home" role="tab"
                               aria-controls="home" aria-selected="true">About</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-2">
                <input type="submit" class="profile-edit-btn" name="btnAddMore" value="Edit Profile"/>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <h1>${userDto.fullName}</h1>
            </div>
            <div class="col-md-8">
                <div class="tab-content profile-tab" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <div class="row">
                            <div class="col-md-6">
                                <label>User Id</label>
                            </div>
                            <div class="col-md-6">
                                <p>${userDto.username}</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Name</label>
                            </div>
                            <div class="col-md-6">
                                <p>${userDto.fullName}</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Email</label>
                            </div>
                            <div class="col-md-6">
                                <p>${userDto.email}</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Phone</label>
                            </div>
                            <div class="col-md-6">
                                <p>${userDto.phoneNumber}</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Website</label>
                            </div>
                            <div class="col-md-6">
                                <p>${userDto.website}</p>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                        <div class="row">
                            <div class="col-md-6">
                                <label>Experience</label>
                            </div>
                            <div class="col-md-6">
                                <p>Expert</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Hourly Rate</label>
                            </div>
                            <div class="col-md-6">
                                <p>10$/hr</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Total Projects</label>
                            </div>
                            <div class="col-md-6">
                                <p>230</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>English Level</label>
                            </div>
                            <div class="col-md-6">
                                <p>Expert</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Availability</label>
                            </div>
                            <div class="col-md-6">
                                <p>6 months</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <label>Your Bio</label><br/>
                                <p>Your detail description</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form:form>
</div>

</body>
</html>