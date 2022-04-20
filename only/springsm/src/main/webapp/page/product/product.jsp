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

<!-- Page Loader -->
<div class="page-loader-wrapper">
    <div class="loader">
        <div class="m-t-30"><img src="${request.getConTextPath()}/page/assets/images/icon-light.svg" width="48" height="48" alt="HexaBit"></div>
        <p>Please wait...</p>
    </div>
</div>
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
        <script>
            function deleteProduct(productId, productName) {
                if (confirm("您确定要删除 【" + productName + "】 吗？")) {
                    // 访问路径
                    location.href = "${APP_PATH}/product/deleteProduct?productId=" + productId;
                }
            }
        </script>

        <div class="container">

            <div style="width: 90%; margin: 10px; height: 100px;">

                <ol class="breadcrumb" style="margin: 10px">
                    <li><a href="${APP_PATH}/home">首页</a></li>
                    <li class="active">商品库存</li>
                </ol>

                <form class="form-inline" style="margin: 10px" action="${APP_PATH}/product/searchPro" method="post">
                    <div class="form-group">
                        <label for="productName">商品名称</label>
                        <input type="text" name="productNameInForm" class="form-control" id="productName" placeholder="输入商品名称">
                    </div>
                    &nbsp;&nbsp;&nbsp;
                    <div class="form-group">
                        <label for="productGroup">商品类别</label>
                        <label>
                            <select id="productGroup" class="form-control" name="groupIdInForm">
                                <option value="0" selected>请选择分类</option>
                                <c:forEach items="${allGroups}" var="group">
                                    <option value="${group.id}">${group.groupName}</option>
                                </c:forEach>
                            </select>
                        </label>
                    </div>
                    &nbsp;&nbsp;&nbsp;
                    <button type="submit" class="btn btn-success">
                        <span class="glyphicon glyphicon-search" aria-hidden="true"></span>&nbsp;开始查找
                    </button>
                    &nbsp;&nbsp;&nbsp;
                    <a href="${APP_PATH}/product/addProductPage" class="btn btn-primary">
                        <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp;新增商品
                    </a>
                </form>
            </div>


            <div style="width: 100%; margin: 0 auto; height: 350px;">


                
                <table class="table table-bordered table-hover">
                    <thead>
                    <tr class="success" style="background: #f1f1ef; alignment: center">
                        <th width="7px">编号</th>
                        <th width="7px">名称</th>
                        <th width="7px">分类</th>
                        <th width="7">厂家</th>
                        <th width="7">生产日期</th>
                        <th width="7">进货日期</th>
                        <th width="7">进价</th>
                        <th width="7">售价</th>
                        <th width="7">售出数</th>
                        <th width="7">库存数</th>
                        <th width="7">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${pageInfo.list}" var="product">
                        <tr style="font-size: xx-small">
                            <td>${product.id}</td>
                            <td>${product.productName}</td>
                            <td>${product.group.groupName}</td>
                            <td>${product.productFactory}</td>
                            <td>${product.yieldDate}</td>
                            <td>${product.createDate}</td>
                            <td>${product.purchasePrice}</td>
                            <td>${product.salePrice}</td>
                            <td>${product.saleCount}</td>
                            <td>${product.stock}</td>
                            <td>
                                <a type="button" class="btn btn-primary btn-sm" aria-label="Left Align"
                                   href="${APP_PATH}/product/toUpdateProductPage?productId=${product.id}">
                                    <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> 修改
                                </a>
                                <a type="button" class="btn btn-danger btn-sm" aria-label="Left Align"
                                   href="javascript:deleteProduct(`${product.id}`,`${product.productName}`);">
                                    <span class="glyphicon glyphicon-trash" aria-hidden="true"></span> 删除
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>

                <div class="row">
                    <div class="col-md-4">
                        <b>当前第 ${pageInfo.pageNum} 页, 总 ${pageInfo.pages} 页, 总 ${pageInfo.total} 条记录</b>
                    </div>
                    <div class="col-md-4 col-md-offset-4">
                        <nav aria-label="Page navigation">
                            <ul class="pagination">
                                <li><a href="${APP_PATH}/product/productList?pn=1">首页</a></li>
                                <c:if test="${pageInfo.hasPreviousPage}">
                                    <li>
                                        <a href="${APP_PATH}/product/productList?pn=${pageInfo.pageNum-1}"
                                           aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                </c:if>

                                <c:forEach items="${pageInfo.navigatepageNums}" var="page_Num">
                                    <c:if test="${page_Num==pageInfo.pageNum}">
                                        <li class="active"><a href="#">${page_Num}</a></li>
                                    </c:if>
                                    <c:if test="${page_Num!=pageInfo.pageNum}">
                                        <li><a href="${APP_PATH}/product/productList?pn=${page_Num}">${page_Num}</a></li>
                                    </c:if>
                                </c:forEach>

                                <c:if test="${pageInfo.hasNextPage}">
                                    <li>
                                        <a href="${APP_PATH}/product/productList?pn=${pageInfo.pageNum+1}" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>
                                </c:if>
                                <li><a href="${APP_PATH}/product/productList?pn=${pageInfo.pages}">末页</a></li>
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
