<title>Add Categories</title>
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
<link rel="stylesheet" href="<c:url value="/view/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css" />"/>
<link rel="stylesheet" href="<c:url value="/view/plugins/iCheck/square/blue.css" />"/>
<c:import url="../../header.jsp"/>
<c:import url="../../sidebar.jsp"/>
<div class="content-wrapper hold-transition register-page">
    <section class="content-header">
        <h1>
            Add Plant Category
        </h1>
    </section>
    <section class="content">

        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <!-- /.box-header -->
                    <div class="row">
                        <!-- /.box -->
                        <div class="col-md-4">
                            <div class="register-box-body">
                                <form action="../../index.html" method="post">

                                    <div class="form-group has-feedback">
                                        <label>Add Category</label>
                                        <input type="text" class="form-control" placeholder="Plant Catagory">
                                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
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

                        </div>
                        <div class="col-md-8">
                            <div class="box-body">
                                <table id="plantCategory" class="table table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>Existing Plant Categories</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Flower</td>
                                            <td><a href="<c:url value="/view/pages/Plant/editPlantCategory.jsp" />"><u>E</u>dit</a></td>
                                        </tr>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th>Existing Plant Categories</th>
                                            <th></th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box-body -->

                        <!-- /.form-box -->
                    </div>
                </div>
            </div>        <br/>
            <!-- /.register-box -->
        </div>
    </section>
</div>
<c:import url="/view/footer.jsp"/>
<!-- iCheck -->
<script src="<c:url value="/view/bower_components/datatables.net/js/jquery.dataTables.min.js" />"></script>
<script src="<c:url value="/view/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js" />"></script>
<script src="<c:url value="/view/plugins/iCheck/icheck.min.js" />"></script>
<script>
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });
    });
</script>
<script>
    $(function () {
        $('#plantCategory').dataTable({
            'paging': true,
            'lengthChange': true,
            'searching': false,
            'ordering': false,
            'info': true,
            'autoWidth': false
        })
    })
</script>
</html>

