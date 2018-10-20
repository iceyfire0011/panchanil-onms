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
                                        <label>Edit Category</label>
                                        <input type="text" class="form-control" placeholder="Plant Catagory" value="Flower">
                                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                                    </div>
                                    <div class="row">
                                        <!-- /.col -->
                                        <div class="col-xs-4">
                                            <button type="submit" class="btn btn-primary btn-block btn-flat">Confirm</button>
                                        </div>
                                        <!-- /.col -->
                                        <!-- /.col -->
                                        <div class="col-xs-4 pull-right">
                                            <a href="<c:url value="/view/pages/Plant/addPlantCategory.jsp"/>" class="btn btn-primary btn-block btn-flat">Cancel</a>
                                        </div>
                                        <!-- /.col -->
                                    </div>
                                </form>
                            </div>

                        </div>
                        
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
        $('#plantCategory').DataTable({
            'paging': true,
            'lengthChange': false,
            'searching': false,
            'ordering': true,
            'info': true,
            'autoWidth': false
        })
    })
</script>
</html>

