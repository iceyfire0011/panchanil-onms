<title>Set Permission</title>
<%-- 
    Document   : newjsp
    Created on : Aug 13, 2017, 10:38:09 PM
    Author     : Green
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- iCheck -->
<c:import url="../../head.jsp"/>
<link rel="stylesheet" href="<c:url value="/view/plugins/iCheck/square/blue.css" />"/>
<c:import url="../../header.jsp"/>
<c:import url="../../sidebar.jsp"/>
<div class="content-wrapper hold-transition register-page">
    <section class="content-header">
        <h1>
            Set Permission
        </h1>
    </section>

    <div class="register-box">
        <div class="register-box-body">
            <p class="login-box-msg">Set Permission for Specific User</p>

            <form action="../../index.html" method="post">
                
                <div class="form-group has-feedback">
                    <label>Select User</label>
                    <select class="form-control">
                        <option>select user</option>
                    </select>
                </div>
                <div class="form-group has-feedback">
                    <label>Access plant</label>
                    <select class="form-control">
                        <option>Yes</option>
                        <option>No</option>
                    </select>
                    <label>Access Production</label>
                    <select class="form-control">
                        <option>Yes</option>
                        <option>No</option>
                    </select>
                    <label>Add Wastage</label>
                    <select class="form-control">
                        <option>Yes</option>
                        <option>No</option>
                    </select>
                    <label>See Reports</label>
                    <select class="form-control">
                        <option>Yes</option>
                        <option>No</option>
                    </select>
                     <label>Manage User</label>
                    <select class="form-control">
                        <option>Yes</option>
                        <option>No</option>
                    </select>
                </div>
                <div class="row">
                    <!-- /.col -->
                    <div class="col-xs-4">
                        <button type="submit" class="btn btn-primary btn-block btn-flat">Confirm</button>
                    </div>
                    <!-- /.col -->
                </div>
            </form>
        </div>
        <!-- /.form-box -->
    </div>
    <br/>
    <!-- /.register-box -->
</div>
<c:import url="/view/footer.jsp"/>
<!-- iCheck -->

</html>

