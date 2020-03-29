
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--@elvariable id="userDto" type="org.spring.example.sharif.instragram.dto.ProfileUpdateDto"--%>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<!------ Include the above in your HEAD tag ---------->

<div class="container bootstrap snippet">
    <div class="row">
        <form:form class="form"
                   action="${pageContext.request.contextPath}EDIT-profile"
                   method="post"
                   id="registrationForm"
                   modelAttribute="user"
                   enctype="multipart/form-data">
            <div class="col-sm-3"><!--left col-->
                <div class="text-center">
                    <img class="avatar img-circle img-thumbnail"
                        <%--                         src="${pageContext.request.contextPath}${userDto.profilePic}"--%>
                         src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png"
                         alt="avatar">
                    <h6>Upload a different photo...</h6>
                    <input type="file" name="file" class="text-center center-block file-upload">
                </div>
                </hr><br>

            </div>
            <!--/col-3-->
            <div class="col-sm-9">
                <div class="tab-pane" id="settings">

                        <%--<form:form class="form"
                                   action="${pageContext.request.contextPath}/user/profile/edit"
                                   method="post" id="registrationForm" modelAttribute="userDto"
                                   enctype="multipart/form-data">--%>

                    <div class="form-group">

                        <div class="col-xs-6">
                            <label for="first_name"><h4>Full name</h4></label>
                            <form:input type="text" class="form-control"
                                        id="first_name"
                                        placeholder="first name"
                                        title="enter your first name if any."
                                        value="${userDto.fullName}"
                                        path="fullName"
                            />
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-6">
                            <label for="last_name"><h4>User name</h4></label>
                            <form:input
                                    type="text" class="form-control"
                                    id="last_name"
                                    placeholder="last name"
                                    title="enter your last name if any."
                                    value="${userDto.username}"
                                    path="username"
                            />
                        </div>
                    </div>




                    <div class="form-group">

                        <div class="col-xs-6">
                            <label for="email"><h4>Email</h4></label>
                            <form:input type="email" class="form-control"
                                        id="email"
                                        placeholder="you@email.com"
                                        title="enter your email."
                                        value="${userDto.email}"
                                        path="email"
                            />
                        </div>
                    </div>


                    <div class="form-group">
                        <div class="col-xs-12">
                            <br>
                            <button class="btn btn-lg btn-success pull-right" type="submit">
                                <i class="glyphicon glyphicon-ok-sign"></i> Save
                            </button>
                            <!--<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>-->
                        </div>
                    </div>
                        <%--</form:form>--%>
                </div>

            </div>
            <!--/tab-pane-->
        </form:form>
    </div><!--/tab-content-->

</div><!--/col-9-->
</div><!--/row-->
</body>
</html>
