<%--
  Created by IntelliJ IDEA.
  User: Abdeslam Rehaimi
  Date: 17/04/2020
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
</head>
<body>
<div style="text-align: center;"><h1 style="color: #1c7430">Not Implemented for the moment, just <a href="register" style="color: #007bff">Register an account</a></h1></div>
<br><br><br>
<div class="container">
    <div class="row">
        <div class="col-6 offset-3 ">
            <div class="card">
                <div class="card-header">Login</div>
                <form:form action="authentification"  method="post" modelAttribute="user">
                    <div class="card-body row">

                        <div class="form-group col-sm-12 required ">
                            <label>Email</label>
                            <form:input path="email" type="email" name="email" placeholder="Email*" class="form-control"></form:input>
                             <form:errors path="email"  class="invalid-feedback"  cssStyle="color: red" />
                        </div>

                        <div class="form-group col-md-12 required ">
                            <label>Mot de pass</label>
                            <form:input path="password" type="password" name="motdepasse" placeholder="Password**" class="form-control is-invalid"></form:input>
                            <form:errors path="password"  class="invalid-feedback"  cssStyle="color: red" />
                        </div>
                        <div class="form-group col-md-12">
                            <!--<a class="btn btn-primary btn-block" href="index.html">Login</a>-->
                            <form:button disabled="true" class="btn btn-primary btn-block">Submit</form:button>
                        </div>
                    </div>
                </form:form>
                <div class="text-center" style="text-align: center!important;">
                    <a class="d-block small mt-3" href="register" >Register an Account</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
