<title>Add Plants</title>
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
            Add New Plant
        </h1>
    </section>

    <section class="content">

        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <!-- /.box-header -->
                    <div class="row">
                        <!-- /.box -->
                        <div class="col-md-6">
                            <div class="register-box-body">
                                <form action="../../index.html" method="post">

                                    <div class="form-group has-feedback">
                                        <label>Edit Plant</label>
                                        <input type="text" class="form-control" placeholder="Plant Name" value="Sunflower">
                                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                                    </div>
                                    <div class="form-group has-feedback">
                                        <label>Select plant categories(To select multiple categories hold Ctrl + Click)</label>
                                        <select class="form-control" multiple>
                                            <option>Flower</option>
                                        </select>
                                    </div>
                                    <div class="form-group has-feedback">
                                        <label>Upload Plant Image</label>
                                        <input type="file" class="form-control" placeholder="Plant Image">
                                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                                    </div>
                                    <div class="form-group has-feedback">
                                        <label>Quantity</label>
                                        <input type="number" class="form-control" placeholder="Plant available quantity">
                                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                                    </div>
                                    <div class="form-group has-feedback">
                                        <label>Available sizes in cm</label>
                                        <div class="input-group">
                                            <input type="number" id="plantSize" class="form-control" placeholder="size in cm">
                                            <div class="input-group-btn">
                                                <button type="button" id="addSize" class="btn btn-block btn-flat">Add</button>
                                                <button type="button" id="clrSize" class="btn btn-block btn-flat">Clear</button>
                                            </div>
                                            <!-- /btn-group -->
                                        </div>
                                        <label id="showPlantSize"></label>
                                    </div>
                                    <div class="row">
                                        <!-- /.col -->
                                        <div class="col-xs-4">
                                            <button type="submit" class="btn btn-primary btn-block btn-flat">Confirm</button>
                                        </div>
                                        <div class="col-xs-4 pull-right">
                                            <a href="<c:url value="/view/pages/Plant/addPlant.jsp"/>" class="btn btn-primary btn-block btn-flat">Cancel</a>
                                        </div>
                                        <!-- /.col -->
                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <!-- /.form-box -->
        </div>
        <br/>
        <!-- /.register-box -->
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
        $('#plantList').DataTable({
            'paging': true,
            'lengthChange': false,
            'searching': false,
            'ordering': true,
            'info': true,
            'autoWidth': false
        })
    })
</script>
<script>
    $("#addSize").click(function () {
        var plantsize = $('#plantSize').val();
        $('#showPlantSize').text($('#showPlantSize').text() + plantsize + ", ");
    });
    $("#clrSize").click(function () {
        $('#showPlantSize').text("");
    });
</script>
</html>