<%--
  Created by IntelliJ IDEA.
  User: Abdeslam Rehaimi
  Date: 06/04/2020
  Time: 21:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<html>
<head>
    <title>Title</title>
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    <style>
        .auto {
            margin-left: auto !important;
            margin-right: auto !important;
            margin-top: 3rem !important;
            position: relative;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="col-md-offset-1 col-md-10">
        <div style="text-align: center;"><h2>Veuillez s'inscrire</h2></div>
        <hr/>
        <br/><br/>
        <div class="panel panel-info auto" style="max-width: 50rem;">
            <div class="panel-heading">
                <div class="panel-title">Register</div>
            </div>
            <div class="panel-body">
                <div class="card-body">
                    <f:form cssClass="form-horizontal" method="post" modelAttribute="utilisateur">
                        <f:hidden path="id_u" />
                        <div class="form-group">
                            <div class="form-label-group">
                                <f:input type="text" id="nom" class="form-control" placeholder="Nom*"
                                         required="required" autofocus="autofocus" path="nom"></f:input>
                                <div class="col-md-3">
                                    <f:errors path="nom" cssClass="alert alert-warning" />
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-label-group">
                                <f:input type="text" class="form-control" placeholder="Prenom*"
                                         required="required" path="prenom"></f:input>
                                <div class="col-md-3">
                                    <f:errors path="prenom" cssClass="alert alert-warning" />
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-label-group">
                                <f:input type="text" id="identiter" class="form-control" placeholder="Identiter*"
                                         required="required" path="identiter"></f:input>
                                <div class="col-md-3">
                                    <f:errors path="identiter" cssClass="alert alert-warning" />
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-label-group">
                                <f:input type="email" id="email" class="form-control" placeholder="Email*"
                                         required="required" autofocus="autofocus" path="email"></f:input>
                                <div class="col-md-3">
                                    <f:errors path="email" cssClass="alert alert-warning" />
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-label-group">
                                <f:input type="password" id="password" class="form-control" placeholder="Password*"
                                         required="required" path="password"></f:input>
                                <div class="col-md-3">
                                    <f:errors path="password" cssClass="alert alert-warning" />
                                </div>
                            </div>
                        </div>
                        <!--
                        <div class="form-group">
                        <div class="form-label-group">
                        <input type="password" id="inputConfPassword" class="form-control" placeholder="Confirme Password*" >
                        </div>
                        </div>
                        -->

                        <f:button cssClass="btn btn-primary">Submit</f:button>
                    </f:form>
                    <div class="text-center">
                        <a class="d-block small mt-3" onclick="window.location.href='index.jsp'; return false;">Login
                            Account
                        </a>

                        <!--Not implemented YET
                        <a class="d-block small" onclick="window.location.href='reset.jsp'; return false;" >Forgot Password?</a>-->
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

</body>
</html>
