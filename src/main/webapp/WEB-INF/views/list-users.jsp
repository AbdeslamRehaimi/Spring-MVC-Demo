<%--
  Created by IntelliJ IDEA.
  User: TOSHIBA
  Date: 04/04/2020
  Time: 22:58
  To change this template use File | Settings | File Templates.
--%>
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
        <h2>Lists of Utilisateur</h2>
        <hr />

        <input type="button" value="Nouveau Utilisateur"
               onclick="window.location.href='addForm'; return false;"
               class="btn btn-primary" />
        <br/><br/>
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">Utilisateur List</div>
            </div>
            <div class="panel-body">
                <table class="table table-striped table-bordered">
                    <tr>
                        <th>ID</th>
                        <th>Nom</th>
                        <th>Prenom</th>
                        <th>Email</th>
                        <th>Identiter</th>
                        <th>Action</th>
                    </tr>

                    <!-- loop over and print our users -->
                    <c:forEach var="temp" items="${utilisateur}">

                        <!-- construct an update link with employee id -->
                        <c:url var="updateLink" value="/user/update">
                            <c:param name="ID_U" value="${temp.ID_U}" />
                        </c:url>

                        <!-- construct an delete link with employee id -->
                        <c:url var="deleteLink" value="/user/delete">
                            <c:param name="ID_U" value="${temp.ID_U}" />
                        </c:url>

                        <tr>
                            <td>${temp.ID_U}</td>
                            <td>${temp.nom}</td>
                            <td>${temp.prenom}</td>
                            <td>${temp.email}</td>
                            <td>${temp.identiter}</td>

                            <td>
                                <!-- display the update link -->
                                <a href="${updateLink}">Update</a>
                                |
                                <a href="${deleteLink}"
                                     onclick="if (!(confirm('Are you sure you want to delete this employee?'))) return false">Delete
                                </a>
                            </td>

                        </tr>

                    </c:forEach>

                </table>

            </div>
        </div>
    </div>

</div>
</body>
</html>
