<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
</head>
<body>

<div class="container">
    <div class="col-md-offset-1 col-md-10">
        <div style="text-align: center;"><h2>Veuiller s'authentifie</h2></div>
        <hr />

        <input type="button" value="Add Employee"

               class="btn btn-primary" />


        <br/><br/>
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">Login</div>
            </div>
            <div class="panel-body">
                <div class="card-body">
                    <form>
                        <div class="form-group">
                            <div class="form-label-group">
                                <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required="required" autofocus="autofocus">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-label-group">
                                <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="required">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" value="remember-me">
                                    Remember Password
                                </label>
                            </div>
                        </div>
                        <input type="submit" class="btn btn-primary btn-block" ></input>
                    </form>
                    <div class="text-center">
                        <a class="d-block small mt-3" onclick="window.location.href='register'; return false;" >Register an Account</a>
                        <a class="d-block small" onclick="window.location.href='reset'; return false;" >Forgot Password?</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

</body>
</html>
