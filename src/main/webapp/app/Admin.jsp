<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <title>Show All Users</title>
</head>
<body>
<div id="wrapper">

    <jsp:include page="../header.jsp"/>
    <div id="page-wrapper">

        <div class="row">
            <div class="col-lg-8">
                <h1 class="page-header">Users information</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-8">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Registered users
                    </div>
                    <div class="panel-body">


                        <table width="100%" class="table table-striped">
                            <thead>
                            <tr>
                                <th>User name</th>
                                <th>Login</th>
                                <th>Role</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${users}" var="user">
                                <tr>
                                    <td><c:out value="${user.name}"/></td>
                                    <td><c:out value="${user.login}"/></td>
                                    <td><c:out value="${user.role}"/></td>
                                    <td>
                                        <button onclick="location.href='AdminController?action=edit&id=<c:out
                                                value="${user.id}"/>'" type="button" class="btn btn-primary">Edit user
                                        </button>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>
        </div>
        <p>
            <button onclick="location.href='AdminController?action=insertManager'" type="button"
                    class="btn btn-primary">Add
                manager
            </button>
        </p>
        <p>
            <button onclick="location.href='AdminController?action=insertDriver'" type="button"
                    class="btn btn-primary">Add
                driver
            </button>
        </p>

    </div>

</body>
</html>