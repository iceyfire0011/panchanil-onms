<%-- 
    Document   : sidebar
    Created on : Aug 6, 2017, 2:03:14 PM
    Author     : Green
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar" style="min-height: 90%">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        
        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search...">
                <span class="input-group-btn">
                    <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                    </button>
                </span>
            </div>
        </form>
        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">MAIN NAVIGATION</li>
            <li class="active">
                <a href="<c:url value="/index.jsp"/>">
                    <i class="fa fa-home"></i> <span>Home</span>
                </a>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-tree"></i> <span>Plant</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="<c:url value="/view/pages/Plant/addPlantCategory.jsp"/>"><i class="fa fa-cubes"></i> Create Plant Category</a></li>
                    <li><a href="<c:url value="/view/pages/Plant/addPlant.jsp"/>"><i class="fa fa-plus-square"></i> Add Plant</a></li>
                    <li><a href="<c:url value="/view/pages/Plant/setPrice.jsp"/>"><i class="fa fa-money"></i> Set Price</a></li>
                    <li><a href="<c:url value="/view/pages/Plant/uploadResearch.jsp"/>"><i class="fa fa-newspaper-o"></i> Upload Research</a></li>
                </ul>
            </li>
            
            
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-industry"></i> <span>Production</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="<c:url value="/view/pages/production/addInvest.jsp"/>"><i class="fa fa-briefcase"></i> New invest</a></li>
                    <li><a href="<c:url value="/view/pages/production/maintenance.jsp"/>"><i class="fa fa-wrench"></i> Maintenance</a></li>
                    <li><a href="<c:url value="/view/pages/production/monthlyExpence.jsp"/>"><i class="fa fa-diamond"></i> Monthly Fixed Cost</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-line-chart"></i>
                    <span>Reports</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="<c:url value="/view/pages/reports/order.jsp"/>"><i class="fa fa-reorder"></i> Order</a></li>
                    <li><a href="<c:url value="/view/pages/reports/overall.jsp"/>"><i class="fa fa-dollar"></i> Sales</a></li>
                    <li><a href="<c:url value="/view/pages/reports/sales.jsp"/>"><i class="fa fa-bar-chart"></i> Overall</a></li>
                </ul>
            </li>
            
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-trash"></i> <span>Wastage</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="<c:url value="/view/pages/wastage/addWaste.jsp"/>"><i class="fa fa-recycle"></i> Add Wastage</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-users"></i>
                    <span>Manage User</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="<c:url value="/view/pages/authentication/registration.jsp"/>"><i class="fa fa-user-plus"></i> New User</a></li>
                    <li><a href="<c:url value="/view/pages/authentication/permission.jsp"/>"><i class="fa fa-key"></i> Permissions</a></li>
                    <li><a href="<c:url value="/view/pages/authentication/changePassword.jsp"/>"><i class="fa fa-expeditedssl"></i> Change Password</a></li>
                    <li><a href="<c:url value="/view/pages/feedback/feedback.jsp"/>"><i class="fa fa-commenting"></i>Feedback</a></li>
                </ul>
            </li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
