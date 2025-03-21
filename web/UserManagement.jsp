<%-- 
    Document   : UserManagement
    Created on : Jan 13, 2025, 2:43:53 PM
    Author     : daoho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<%@page import="entity.Account, dao.UserDAO" %>
<%@page import="java.util.List, java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap Order Details Table with Search Filter</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            body {
                color: #566787;
                background: #f5f5f5;
                font-family: 'Varela Round', sans-serif;
                font-size: 13px;
            }
            .table-wrapper {
                background: #fff;
                padding: 20px 25px;
                margin: 30px auto;
                border-radius: 3px;
                box-shadow: 0 1px 1px rgba(0,0,0,.05);
            }
            .table-wrapper .btn {
                float: right;
                color: #333;
                background-color: #fff;
                border-radius: 3px;
                border: none;
                outline: none !important;
                margin-left: 10px;
            }
            .table-wrapper .btn:hover {
                color: #333;
                background: #f2f2f2;
            }
            .table-wrapper .btn.btn-primary {
                color: #fff;
                background: #03A9F4;
            }
            .table-wrapper .btn.btn-primary:hover {
                background: #03a3e7;
            }
            .table-title .btn {
                font-size: 13px;
                border: none;
            }
            .table-title .btn i {
                float: left;
                font-size: 21px;
                margin-right: 5px;
            }
            .table-title .btn span {
                float: left;
                margin-top: 2px;
            }
            .table-title {
                color: #fff;
                background: #4b5366;
                padding: 16px 25px;
                margin: -20px -25px 10px;
                border-radius: 3px 3px 0 0;
            }
            .table-title h2 {
                margin: 5px 0 0;
                font-size: 24px;
            }
            .show-entries select.form-control {
                width: 60px;
                margin: 0 5px;
            }
            .table-filter .filter-group {
                float: right;
                margin-left: 15px;
            }
            .table-filter input, .table-filter select {
                height: 34px;
                border-radius: 3px;
                border-color: #ddd;
                box-shadow: none;
            }
            .table-filter {
                padding: 5px 0 15px;
                border-bottom: 1px solid #e9e9e9;
                margin-bottom: 5px;
            }
            .table-filter .btn {
                height: 34px;
            }
            .table-filter label {
                font-weight: normal;
                margin-left: 10px;
            }
            .table-filter select, .table-filter input {
                display: inline-block;
                margin-left: 5px;
            }
            .table-filter input {
                width: 200px;
                display: inline-block;
            }
            .filter-group select.form-control {
                width: 110px;
            }
            .filter-icon {
                float: right;
                margin-top: 7px;
            }
            .filter-icon i {
                font-size: 18px;
                opacity: 0.7;
            }
            table.table tr th, table.table tr td {
                border-color: #e9e9e9;
                padding: 12px 15px;
                vertical-align: middle;
            }
            table.table tr th:first-child {
                width: 60px;
            }
            table.table tr th:last-child {
                width: 80px;
            }
            table.table-striped tbody tr:nth-of-type(odd) {
                background-color: #fcfcfc;
            }
            table.table-striped.table-hover tbody tr:hover {
                background: #f5f5f5;
            }
            table.table th i {
                font-size: 13px;
                margin: 0 5px;
                cursor: pointer;
            }
            table.table td a {
                font-weight: bold;
                color: #566787;
                display: inline-block;
                text-decoration: none;
            }
            table.table td a:hover {
                color: #2196F3;
            }
            table.table td a.view {
                width: 30px;
                height: 30px;
                color: #2196F3;
                border: 1px solid;
                border-radius: 30px;
                text-align: center;
            }
            table.table td a.view i {
                font-size: 22px;
                margin: 2px 0 0 1px;
            }
            table.table .avatar {
                border-radius: 50%;
                vertical-align: middle;
                margin-right: 10px;
            }
            .status {
                font-size: 30px;
                margin: 2px 2px 0 0;
                display: inline-block;
                vertical-align: middle;
                line-height: 10px;
            }
            .text-success {
                color: #10c469;
            }
            .text-info {
                color: #62c9e8;
            }
            .text-warning {
                color: #FFC107;
            }
            .text-danger {
                color: #ff5b5b;
            }
            .pagination {
                float: right;
                margin: 0 0 5px;
            }
            .pagination li a {
                border: none;
                font-size: 13px;
                min-width: 30px;
                min-height: 30px;
                color: #999;
                margin: 0 2px;
                line-height: 30px;
                border-radius: 2px !important;
                text-align: center;
                padding: 0 6px;
            }
            .pagination li a:hover {
                color: #666;
            }
            .pagination li.active a {
                background: #03A9F4;
            }
            .pagination li.active a:hover {
                background: #0397d6;
            }
            .pagination li.disabled i {
                color: #ccc;
            }
            .pagination li i {
                font-size: 16px;
                padding-top: 6px
            }
            .hint-text {
                float: left;
                margin-top: 10px;
                font-size: 13px;
            }
        </style>
        <script>
            $(document).ready(function () {
                $('[data-toggle="tooltip"]').tooltip();
            });
        </script>
        <script>
            $(document).ready(function () {
                $(".editBtn").on("click", function () {
                    let row = $(this).closest("tr"); // Hàng chứa user
                    let formRow = row.next(".editForm"); // Hàng form kế tiếp

                    // Hiển thị/ẩn form chỉnh sửa
                    formRow.toggle();
                });

                $(".closeForm").on("click", function () {
                    $(this).closest(".editForm").hide();
                });

                $(".togglePassword").on("click", function () {
                    let passwordField = $(this).prev(".password");
                    let type = passwordField.attr("type") === "password" ? "text" : "password";
                    passwordField.attr("type", type);
                });
            });

        </script>
    </head>
    <body>
        <%--<jsp:include page="inc/header.jsp" />--%>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-4">
                            <h2>Users <b>Details</b></h2>
                        </div>
                        <div class="col-sm-8">						
                            <a href="management-user" class="btn btn-primary"><i class="material-icons">&#xE863;</i> <span>Refresh List</span></a>
                            <a href="#" class="btn btn-info"><i class="material-icons">&#xE24D;</i> <span>Export to Excel</span></a>
                        </div>
                    </div>
                </div>
                <div class="table-filter">
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="show-entries">
                                <span>Show</span>
                                <span>
                                    <form style="display: inline;" method="GET" action="/GroceryShop/management-user">
                                        <select class="form-control" id="timeSelector" name="times" onchange="this.form.submit()">
                                            <option value="5" ${param.times == '5' ? 'selected' : ''}>5</option>
                                            <option value="10" ${param.times == '10' ? 'selected' : ''}>10</option>
                                            <option value="15" ${param.times == '15' ? 'selected' : ''}>15</option>
                                            <option value="100000" ${param.times == '100000' ? 'selected' : ''}>ALL</option>
                                        </select>
                                    </form>
                                </span>
                                <span>User</span>
                            </div>
                        </div>
                        <div class="col-sm-9">
                            <form style="display: inline;" method="GET" action="/GroceryShop/management-user">
                                <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
                                <div class="filter-group">
                                    <label>Name</label>

                                    <input type="text" 
                                           id="uname" 
                                           name="uname" 
                                           class="form-control" 
                                           value="${param.uname}" 
                                           placeholder="Enter name"> 

                                </div>
                            </form>
                            <div class="filter-group">
                                <label>Role</label>
                                <select class="form-control">
                                    <option>All</option>
                                    <option>Admin</option>
                                    <option>Customer</option>
                                    <option>Reviewer</option>
                                    <option>PaidPerson</option>
                                    <option>V.I.P</option>								
                                </select>
                            </div>
                            <div class="filter-group">
                                <label>Status</label>
                                <form style="display: inline;" method="GET" action="/GroceryShop/management-user">
                                    <select class="form-control" id="timeSelector" name="status" onchange="this.form.submit()">
                                        <option>Any</option>
                                        <option value="1" ${param.status == '1' ? 'selected' : ''}>Active</option>
                                        <option value="0" ${param.status == '0' ? 'selected' : ''}>Inactive</option>
                                    </select>
                                </form>
                            </div>
                            <span class="filter-icon"><i class="fa fa-filter"></i></span>
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>uID</th>
                            <th>Customer</th>
                            <th>User Mail</th>
                            <th>Password</th>						
                            <th>Status</th>						
                            <th>Role</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:if test="${not empty listU}">
                            <c:forEach items = "${listU}" var="o"> 
                                <tr>
                                    <td>${o.id}</td>
                                    <td><a href="#"><img src="/examples/images/avatar/1.jpg" class="avatar" alt="Avatar"> ${o.userName}</a></td>
                                    <td>${o.userMail}</td>
                                    <td>${o.passWord}</td>  
                                    <td>
                                        <c:choose>
                                            <c:when test="${o.status}">
                                                <span class="status text-success">&bull;</span> Active
                                            </c:when>
                                            <c:otherwise>
                                                <span class="status text-danger">&bull;</span> Inactive
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td>${o.role}</td>
                                    <td><a href="#" class="view" title="View Details"><i class="material-icons visibility">&#xe8f4;</i></a></td>
                                    <td><a href="disableuser?uid=${o.id}" class="view" title="Lock User" style="color: gray;"><i class="material-icons vpn_key">&#xe0da;</i></a></td>
                                    <td><button class="editBtn btn btn-primary" data-userid="${o.id}"><a href="?uid=${o.id}"><i class="material-icons build">&#xe869;</i></a></button></td>
                                    <td><a href="delete?uid=${o.id}" onclick="return confirm('Bạn có chắc chắn muốn xóa user này?')" class="view deleteButton" title="Delete User" data-toggle="tooltip"  style="color: red;" ><i class="material-icons delete_forever">&#xe92b;</i></i></a></td> 
                                <tr class="editForm" style="display: none;">
                                    <td colspan="4">
                                        <h2>Chỉnh sửa thông tin</h2>

                                        <form class="userForm" method="post" action="update?uid=${o.id}">
                                            <label>Tên User:
                                                <%--<%= a.getUserName()%>--%>
                                            </label>
                                            <input type="text" name="username" class="username" value="${o.userName}" required>
                                            <br>
                                            <label>Email:</label>
                                            <input type="email" name="email" class="email" value="${o.userMail}" required>
                                            <br>    
                                            <label>Password:</label>    
                                            <div class="password-container">
                                                <input type="password" name="password" class="password" value="${o.passWord}" required>
                                                <span class="togglePassword">👁️</span>
                                            </div>
                                            <br>
                                            <label>Role:</label>
                                            <input type="text" name="role" class="role" value="${o.role}" required>

                                            <button type="submit" class="btn btn-success" name="update">Lưu</button>
                                            <button type="button" class="closeForm btn btn-danger">Đóng</button>
                                        </form>
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:if>
                        <c:if test="${empty listU}">
                        <p>No users found.</p>
                    </c:if>
                    </tbody>
                </table>
                <div class="clearfix">
                    <%
                        UserDAO userDAO = new UserDAO();
                        int total = userDAO.totalAccounts();
                    %>
                    <div class="hint-text">Showing <b>5</b> out of <b><%= total %></b> entries</div>
                    <ul class="pagination">
                        <li class="page-item active"><a href="#">Previous</a></li>
                        <li class="page-item"><a href="#" class="page-link">1</a></li>
                        <li class="page-item"><a href="#" class="page-link">2</a></li>
                        <li class="page-item"><a href="#" class="page-link">3</a></li>
                        <li class="page-item"><a href="#" class="page-link">4</a></li>
                        <li class="page-item"><a href="#" class="page-link">5</a></li>
                        <li class="page-item"><a href="#" class="page-link">6</a></li>
                        <li class="page-item"><a href="#" class="page-link">7</a></li>
                        <li class="page-item"><a href="#" class="page-link">Next</a></li>
                    </ul>
                </div>
            </div>
        </div> 
        <%--<jsp:include page="inc/footer.jsp" />--%>
    </body>
</html>  