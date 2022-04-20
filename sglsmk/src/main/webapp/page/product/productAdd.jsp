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
                    <li class="active"><a href="/product/productList"><i class="icon-social-dropbox"></i><span>商品库存</span></a></li>
                    <li><a href="/userList"><i class="icon-user-following"></i><span>用户管理</span></a></li>
                    <li><a href="/provider/providerList"><i class="icon-briefcase"></i><span>供应商管理</span></a></li>

                    <li><a href="/group/groupList"><i class="icon-list"></i><span>商品分类</span></a></li>
                    <li><a href="/toCheckout"><i class="icon-calendar"></i><span>结算服务</span></a></li>
                    <li><a href="/sale/saleInfo"><i class="icon-book-open"></i><span>销售统计</span></a></li>
                </ul>
            </nav>
        </div>
    </div>

    <div id="main-content">
        <div class="container" style="width: 50%; alignment: center">

            <%--中间部门内容--%>
            <div style="width: 80%; alignment: center;">
                <%--表单内容太多, 标题就不写了--%>
                <%--        <div class="col-sm-4 col-sm-offset-4" style="width: 80%; alignment: center">--%>
                <%--            <h3>添加商品详情页</h3>--%>
                <%--        </div>--%>

                <form class="form-horizontal" action="${APP_PATH}/product/addProduct">
                    <%--商品名称--%>
                    <div class="form-group">
                        <label for="productName" class="col-sm-4 control-label">商品名称</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" name="productName" id="productName" placeholder="商品名称">
                        </div>
                    </div>

                    <%--商品类别 v2--%>
                    <div class="form-group">
                        <label class="col-sm-4 control-label">商品类别</label>
                        <div class="col-sm-8">
                            <label>
                                <select class="form-control" name="groupId">
                                    <c:forEach items="${allGroups}" var="group">
                                        <option value="${group.id}">${group.groupName}</option>
                                    </c:forEach>
                                </select>
                            </label>
                        </div>
                    </div>

                    <%--供货商--%>
                    <div class="form-group">
                        <label class="col-sm-4 control-label">供货商</label>
                        <div class="col-sm-8">
                            <label>
                                <select class="form-control" name="providerId">
                                    <c:forEach items="${allProviders}" var="provider">
                                        <option value="${provider.id}">${provider.providerName}</option>
                                    </c:forEach>
                                </select>
                            </label>
                        </div>
                    </div>

                    <%--生产日期--%>
                    <div class="form-group">
                        <label for="yieldDate" class="col-sm-4 control-label">生产日期</label>
                        <div class="col-sm-8">
                            <input type="date" class="form-control" name="yieldDate" id="yieldDate" placeholder="生产日期">
                        </div>
                    </div>

                    <%--生产厂家--%>
                    <div class="form-group">
                        <label for="productFactory" class="col-sm-4 control-label">生产厂家</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" name="productFactory" id="productFactory"
                                   placeholder="生产厂家">
                        </div>
                    </div>

                    <%--进价--%>
                    <div class="form-group">
                        <label for="purchasePrice" class="col-sm-4 control-label">进价</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" name="purchasePrice" id="purchasePrice"
                                   placeholder="进价">
                        </div>
                    </div>

                    <%--库存--%>
                    <div class="form-group">
                        <label for="stock" class="col-sm-4 control-label">库存</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" name="stock" id="stock" placeholder="库存">
                        </div>
                    </div>

                    <%--售价--%>
                    <div class="form-group">
                        <label for="salePrice" class="col-sm-4 control-label">售价</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" name="salePrice" id="salePrice" placeholder="售价">
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
