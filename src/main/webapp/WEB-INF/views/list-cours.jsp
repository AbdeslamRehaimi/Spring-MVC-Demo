<%--
  Created by IntelliJ IDEA.
  User: TOSHIBA
  Date: 14/04/2020
  Time: 22:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>List|Cours</title>
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
</head>
<body>
    <div class="container">
        <div class="col-md-offset-1 col-md-10">
            <fieldset>
                <center>
                    <h1> <span style="color: #0000007a;">Spring MVC</span> DEMO </h1>
                </center>
                <hr>
             </fieldset>

            <h2>Lists of Cours</h2>
            <hr />

            <input type="button" style="float: left;" value="Nouveau Cours"
                   onclick="window.location.href='new'; return false;"
                   class="btn btn-primary" />

            <input type="button" style="float: right;" value="Consultation Utilisateurs"
                   onclick="window.location.href='../user/list'; return false;"
                   class="btn btn-primary" />

            <br/><br/>
            <div class="panel panel-info">
                <div class="panel-heading">
                    <div class="panel-title">Cours List</div>
                </div>
                <div class="panel-body">
                    <table class="table  table-dark table-striped table-bordered">
                        <tr>
                            <th>ID</th>
                            <th>Titre</th>
                            <th>Module</th>
                            <th>Auteur</th>
                            <th>User-Owner</th>
                            <th>Image</th>
                            <th>Action</th>
                        </tr>

                        <c:forEach var="temp" items="${cours}">
                            <c:url var="updateLink" value="/cours/update">
                                <c:param name="ID_U" value="${temp.ID_C}" />
                            </c:url>

                            <c:url var="deleteLink" value="/cours/delete">
                                <c:param name="ID_U" value="${temp.ID_C}" />
                            </c:url>

                            <tr>
                                <td>${temp.ID_C}</td>
                                <td>${temp.titre}</td>
                                <td>${temp.module}</td>
                                <td>${temp.auteur}</td>
                                <td>${temp.auteur}</td>
                                <td>
                                    <c:choose>
                                        <c:when test="${temp.image.length()>20}">
                                            <img width="80px" height="30px" src="${temp.image}" alt="image">
                                        </c:when>
                                        <c:otherwise>
                                            ${temp.image}
                                        </c:otherwise>
                                    </c:choose>
                                </td>

                                <td>
                                    <a href="${updateLink}">Update</a>
                                    |
                                    <a href="${deleteLink}"
                                       onclick="if (!(confirm('Voulez vous vraiment supprimer ce cour ?'))) return false">Delete
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
