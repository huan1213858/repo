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

        <%--中间内容部分--%>
        <div class="container">

            <%--路径导航--%>
            <div style="width: 100%; margin: 0 auto; height: 100px;">
                <ol class="breadcrumb">
                    <li><a href="${APP_PATH}/home">首页</a></li>
                    <li><a href="${APP_PATH}/provider/providerList">供应商详情</a></li>
                    <li class="active">供应商供货销售信息</li>
                </ol>
                <h2>供应商联系人：${provider.providerContact}，供应商：${provider.providerName}</h2>
            </div>

            <%--商品库存信息表格--%>
            <div style="width: 100%; margin: 0 auto; height: 400px;">

                <%--表格样式: 基础表格、带边框、悬浮隔行变色--%>
                <table class="table table-bordered table-hover">
                    <thead>
                    <tr class="success" style="background: #f1f1ef; alignment: center">
                        <th>供应商名称</th>
                        <th>商品名称</th>
                        <th>分类</th>
                        <th>进价</th>
                        <th>售价</th>
                        <th>售出数</th>
                        <th>库存数</th>
                        <th>总利润</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${pageInfo.list}" var="record">
                        <tr style="font-size: xx-small">
                            <td>${provider.providerName}</td>
                            <td>${record.productName}</td>
                            <td>${record.group.groupName}</td>
                            <td>${record.purchasePrice}</td>
                            <td>${record.salePrice}</td>
                            <td>${record.saleCount}</td>
                            <td>${record.stock}</td>
                            <td>
                                <c:if test="${record.saleCount==0}">
                                    0
                                </c:if>
                                <c:if test="${record.saleCount!=0}">
                                    <fmt:formatNumber
                                            value="${(record.salePrice - record.purchasePrice) * record.saleCount}"
                                            pattern="#.00#"/>
                                </c:if>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>

                <%--分页信息--%>
                <div class="row">
                    <%--分页数据显示--%>
                    <div class="col-md-4">
                        <b>当前第 ${pageInfo.pageNum} 页, 总 ${pageInfo.pages} 页, 总 ${pageInfo.total} 条记录</b>
                    </div>
                    <%--分页条--%>
                    <div class="col-md-4 col-md-offset-4">
                        <nav aria-label="Page navigation">
                            <ul class="pagination">
                                <%--自定义添加首页末页--%>
                                <li><a href="${APP_PATH}/provider/provideProducts?pn=1&providerId=${provider.id}">首页</a></li>
                                <c:if test="${pageInfo.hasPreviousPage}">
                                    <li>
                                        <a href="${APP_PATH}/provider/provideProducts?pn=${pageInfo.pageNum-1}&providerId=${provider.id}"
                                           aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                </c:if>

                                <%--分页条BAR--%>
                                <c:forEach items="${pageInfo.navigatepageNums}" var="page_Num">
                                    <c:if test="${page_Num==pageInfo.pageNum}">
                                        <li class="active"><a href="#">${page_Num}</a></li>
                                    </c:if>
                                    <c:if test="${page_Num!=pageInfo.pageNum}">
                                        <li>
                                            <a href="${APP_PATH}/provider/provideProducts?pn=${page_Num}&providerId=${provider.id}">${page_Num}</a>
                                        </li>
                                    </c:if>
                                </c:forEach>

                                <c:if test="${pageInfo.hasNextPage}">
                                    <li>
                                        <a href="${APP_PATH}/provider/provideProducts?pn=${pageInfo.pageNum+1}&providerId=${provider.id}"
                                           aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>
                                </c:if>
                                <li>
                                    <a href="${APP_PATH}/provider/provideProducts?pn=${pageInfo.pages}&providerId=${provider.id}">末页</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>

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
