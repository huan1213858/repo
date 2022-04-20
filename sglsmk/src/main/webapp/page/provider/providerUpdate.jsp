<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <title>基于SpringBoot苏格拉底超市管理系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta name="description" content="HexaBit Bootstrap 4x Admin Template">
    <meta name="author" content="WrapTheme, www.thememakker.com">

    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">


    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <!-- VENDOR CSS -->
    <link rel="stylesheet" href="${request.getConTextPath()}/page/assets/vendor/font-awesome/css/font-awesome.min.css">

    <link rel="stylesheet" href="${request.getConTextPath()}/page/assets/vendor/charts-c3/plugin.css"/>
    <link rel="stylesheet" href="${request.getConTextPath()}/page/assets/vendor/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css">
    <link rel="stylesheet" href="${request.getConTextPath()}/page/assets/vendor/chartist/css/chartist.min.css">
    <link rel="stylesheet" href="${request.getConTextPath()}/page/assets/vendor/chartist-plugin-tooltip/chartist-plugin-tooltip.css">
    <link rel="stylesheet" href="${request.getConTextPath()}/page/assets/vendor/toastr/toastr.min.css">


    <!-- MAIN CSS -->
    <link rel="stylesheet" href="${request.getConTextPath()}/page/assets/css/main.css">
    <link rel="stylesheet" href="${request.getConTextPath()}/page/assets/css/color_skins.css">
    <%
        pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>


    <style>
        #top{
            right: 0;
            width: 100%;
        }

        #menu{
            margin-left:170px;
        }

        #navbar-menu{
            margin-left:730px;
        }

    </style>



</head>
<body class="theme-orange">


<!-- Overlay For Sidebars -->
<div class="overlay"></div>

<div id="wrapper">

    <nav id="top" class="navbar navbar-fixed-top">
        <div class="container-fluid">

            <div id="menu" class="navbar-left">

                <a href="javascript:void(0);" class="icon-menu btn-toggle-fullwidth"><i class="fa fa-arrow-left"></i></a>
                <ul class="nav navbar-nav">
                    <li class="dropdown dropdown-animated scale-right">
                        <a href="javascript:void(0);" class="dropdown-toggle icon-menu" data-toggle="dropdown"><i class="icon-grid"></i></a>
                        <ul class="dropdown-menu menu-icon app_menu">
                            <li>
                                <a class="#">
                                    <i class="icon-user-following"></i>
                                    <span>Inbox</span>
                                </a>
                            </li>
                            <li>
                                <a class="#">
                                    <i class="icon-briefcase"></i>
                                    <span>Chat</span>
                                </a>
                            </li>
                            <li>
                                <a class="#">
                                    <i class="icon-list"></i>
                                    <span>Task</span>
                                </a>
                            </li>
                            <li>
                                <a class="#">
                                    <i class="icon-globe"></i>
                                    <span>Blog</span>
                                </a>
                            </li>
                        </ul>
                    </li>

                </ul>
            </div>

            <div  class="navbar-right">


                <div id="navbar-menu">
                    <ul class="nav navbar-nav">

                        <li><a href="/exit" class="icon-menu"><i class="icon-power"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>



    <div id="left-sidebar" class="sidebar">
        <div class="navbar-brand">
            <a href="https://www.gzasc.edu.cn/"><img src="${request.getConTextPath()}/page/assets/images/icon-dark.svg" alt="HexaBit Logo" class="img-fluid logo"><span>SGLD</span></a>
            <button type="button" class="btn-toggle-offcanvas btn btn-sm btn-default float-right"><i class="lnr lnr-menu fa fa-chevron-circle-left"></i></button>
        </div>
        <div class="sidebar-scroll">
            <div class="user-account">
                <div class="user_div">
                    <img src="${request.getConTextPath()}/page/assets/images/user.png" class="user-photo" alt="User Profile Picture">
                </div>
               <div class="dropdown">
                    <span>Welcome,</span>
                    <a href="javascript:void(0);" class="dropdown-toggle user-name" data-toggle="dropdown"><strong>${sessionScope.userName}</strong></a>
                    <ul class="dropdown-menu dropdown-menu-right account">
                        <li><a href="${APP_PATH}/toUpdateCurrentPasswordPage"><i class="icon-user"></i>修改密码</a></li>

                        <li><a href="/exit"><i class="icon-power"></i>退出用户</a></li>
                    </ul>
                </div>
            </div>
            <nav id="left-sidebar-nav" class="sidebar-nav">
                <ul id="main-menu" class="metismenu">
                    <li><a href="/product/productList"><i class="icon-social-dropbox"></i><span>商品库存</span></a></li>
                    <li><a href="/userList"><i class="icon-user-following"></i><span>用户管理</span></a></li>
                    <li class="active"><a href="/provider/providerList"><i class="icon-briefcase"></i><span>供应商管理</span></a></li>

                    <li><a href="/group/groupList"><i class="icon-list"></i><span>商品分类</span></a></li>
                    <li><a href="/toCheckout"><i class="icon-calendar"></i><span>结算服务</span></a></li>
                    <li><a href="/sale/saleInfo"><i class="icon-book-open"></i><span>销售统计</span></a></li>
                </ul>
            </nav>
        </div>
    </div>

    <div id="main-content">

        <style type="text/css">
            a {
                text-decoration-line: none;
            }
        </style>

        <div class="container" style="width: 50%; alignment: center">
            <div style="width: 80%; margin: 0 auto; height: 40px;">
                <%--路径导航--%>
                <ol class="breadcrumb">
                    <li><a href="${APP_PATH}/home">首页</a></li>
                    <li><a href="${APP_PATH}/provider/providerList">供应商详情</a></li>
                    <li class="active">修改供应商</li>
                </ol>
            </div>

            <%--中间部门内容--%>
            <div style="width: 80%; alignment: center;">
                <div class="col-sm-4 col-sm-offset-4" style="width: 80%; alignment: center">
                    <h3>修改供应商详情页</h3>
                </div>

                <%--更新供应商信息(有信息回显)--%>
                <form class="form-horizontal" action="${APP_PATH}/provider/updateProvider">
                    <%--供应商id--%>
                    <%--如果想要属性不被修改, 这里要设置readonly, disable会导致不可读, 读不到数据后端根据id更新个锤子--%>
                    <div class="form-group">
                        <label for="id" class="col-sm-4 control-label">供应商id</label>
                        <div class="col-sm-8">
                            <input type="text" readonly="readonly" class="form-control" name="id" id="id"
                                   placeholder="${selectedProvider.id}"
                                   value="${selectedProvider.id}">
                        </div>
                    </div>

                    <%--供应商名称--%>
                    <div class="form-group">
                        <label for="providerName" class="col-sm-4 control-label">供应商名称</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" name="providerName" id="providerName"
                                   placeholder="${selectedProvider.providerName}"
                                   value="${selectedProvider.providerName}">
                        </div>
                    </div>

                    <%--供货商联系人--%>
                    <div class="form-group">
                        <label for="providerContact" class="col-sm-4 control-label">供货商联系人</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" name="providerContact" id="providerContact"
                                   placeholder="${selectedProvider.providerContact}"
                                   value="${selectedProvider.providerContact}">
                        </div>
                    </div>

                    <%--供货商联系电话--%>
                    <div class="form-group">
                        <label for="contactPhone" class="col-sm-4 control-label">供货商联系电话</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" name="contactPhone" id="contactPhone"
                                   placeholder="${selectedProvider.contactPhone}"
                                   value="${selectedProvider.contactPhone}">
                        </div>
                    </div>

                    <%--供货商地址--%>
                    <div class="form-group">
                        <label for="providerAddress" class="col-sm-4 control-label">供货商地址</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" name="providerAddress" id="providerAddress"
                                   placeholder="${selectedProvider.providerAddress}"
                                   value="${selectedProvider.providerAddress}">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-4 col-sm-4">
                            <button type="reset" class="btn btn-primary">重置(Reset)</button>
                        </div>
                        <div class="col-sm-4">
                            <button type="submit" class="btn btn-danger">提交(Submit)</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>


    </div>

</div>

<!-- Javascript -->
<script src="${request.getConTextPath()}/page/assets/bundles/libscripts.bundle.js"></script>
<script src="${request.getConTextPath()}/page/assets/bundles/vendorscripts.bundle.js"></script>

<script src="${request.getConTextPath()}/page/assets/bundles/c3.bundle.js"></script>
<script src="${request.getConTextPath()}/page/assets/bundles/chartist.bundle.js"></script>
<script src="${request.getConTextPath()}/page/assets/vendor/toastr/toastr.js"></script>

<script src="${request.getConTextPath()}/page/assets/bundles/mainscripts.bundle.js"></script>
<script src="${request.getConTextPath()}/page/assets/js/index.js"></script>
</body>
</html>
