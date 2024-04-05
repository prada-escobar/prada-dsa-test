<%--
  Created by IntelliJ IDEA.
  User: prada
  Date: 4/3/2024
  Time: 12:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
<!-- BEGIN: Head-->

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <meta name="description"
          content="Frest admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords"
          content="admin template, Frest admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>Prada Test - Producto</title>
    <link rel="apple-touch-icon" href="/PradaStruts2/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="/PradaStruts2/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css?family=Rubik:300,400,500,600%7CIBM+Plex+Sans:300,400,500,600,700"
          rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="/PradaStruts2/vendors/css/vendors.min.css">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="/PradaStruts2/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="/PradaStruts2/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="/PradaStruts2/css/colors.css">
    <link rel="stylesheet" type="text/css" href="/PradaStruts2/css/components.css">
    <link rel="stylesheet" type="text/css" href="/PradaStruts2/css/themes/dark-layout.css">
    <link rel="stylesheet" type="text/css" href="/PradaStruts2/css/themes/semi-dark-layout.css">
    <!-- END: Theme CSS-->

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="/PradaStruts2/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="/PradaStruts2/css/pages/app-invoice.css">
    <!-- END: Page CSS-->

</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="vertical-layout vertical-menu-modern semi-dark-layout 2-columns  navbar-sticky footer-static  "
      data-open="click" data-menu="vertical-menu-modern" data-col="2-columns" data-layout="semi-dark-layout">

<!-- BEGIN: Header-->
<div class="header-navbar-shadow"></div>
<!-- END: Header-->

<!-- BEGIN: Main Menu-->
<div class="main-menu menu-fixed menu-dark menu-accordion menu-shadow" data-scroll-to-active="true">
    <div class="navbar-header">
        <ul class="nav navbar-nav flex-row">
            <li class="nav-item mr-auto"><a class="navbar-brand"
                                            href="#">
                <div class="brand-logo"><img class="logo" src="/PradaStruts2/images/logo.png"/></div>
                <h2 class="brand-text mb-0">Prada Test</h2>
            </a></li>
            <li class="nav-item nav-toggle"><a class="nav-link modern-nav-toggle pr-0" data-toggle="collapse"><i
                    class="bx bx-x d-block d-xl-none font-medium-4 primary"></i><i
                    class="toggle-icon bx bx-disc font-medium-4 d-none d-xl-block primary" data-ticon="bx-disc"></i></a>
            </li>
        </ul>
    </div>
    <div class="shadow-bottom"></div>
    <div class="main-menu-content">
        <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation"
            data-icon-style="lines">
            <li class=" nav-item"><a href="#"><i class="menu-livicon" data-icon="box-add"></i><span class="menu-title"
                                                                                                    data-i18n="Invoice">Productos</span></a>
                <ul class="menu-content">
                    <li class="<s:if test='%{mode != "add"}'>active</s:if>"><a href="<s:url action='listProducts'/>"><i
                            class="bx bx-right-arrow-alt"></i><span
                            class="menu-item" data-i18n="Invoice List">Listado</span></a>
                    </li>
                    <li class="<s:if test='%{mode == "add"}'>active</s:if>"><a
                            href="<s:url action='addProductForm'/>"><i class="bx bx-right-arrow-alt"></i><span
                            class="menu-item"
                            data-i18n="Invoice">Crear Nuevo</span></a>
                    </li>
                </ul>
            </li>
            <li class="nav-item"><a href="#"><i class="menu-livicon" data-icon="star"></i><span class="menu-title"
                                                                                                data-i18n="Invoice">Reviews</span></a>
                <ul class="menu-content">
                    <li><a href="<s:url action='listReviews'/>"><i class="bx bx-right-arrow-alt"></i><span class="menu-item"
                                                                                                                                                               data-i18n="Invoice List">Listado</span></a>
                    </li>
                    <li><a href="<s:url action='addReviewForm'/>"><i class="bx bx-right-arrow-alt"></i><span class="menu-item"
                                                                                                                                                                 data-i18n="Invoice">Crear Nuevo</span></a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</div>
<!-- END: Main Menu-->


<!-- BEGIN: Content-->
<div class="app-content content">
    <div class="content-overlay"></div>
    <div class="content-wrapper">
        <div class="content-header row">
            <div class="content-header-left col-12 mb-2 mt-1">
                <div class="row breadcrumbs-top">
                    <div class="col-12">
                        <h5 class="content-header-title float-left pr-1 mb-0">Crear Nuevo Producto</h5>
                        <div class="breadcrumb-wrapper col-12">
                            <ol class="breadcrumb p-0 mb-0">
                                <li class="breadcrumb-item"><a href="<s:url action='listProducts'/>"><i
                                        class="bx bx-home-alt"></i></a>
                                </li>
                                <li class="breadcrumb-item"><a href="<s:url action='listProducts'/>">Producto</a>
                                </li>
                                <li class="breadcrumb-item active"><a href="#">Crear Nuevo</a>
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-body">

            <%--            <div class="row">--%>

            <div class="d-flex align-items-center justify-content-center h-px-500 row">
                <div class="card mb-4 col-md-6">
                    <div class="card-header d-flex justify-content-between align-items-center">
                        <h5 class="mb-0">
                            <s:if test="%{mode == 'edit'}">
                                Editar Producto
                            </s:if>
                            <s:elseif test="%{mode == 'add'}">
                                Crear Producto
                            </s:elseif>
                            <s:else>
                                Visualizar Producto
                            </s:else>
                        </h5>
                        <small class="text-muted float-end"></small>
                    </div>
                    <div class="card-body">
                        <s:form action="%{formAction}" method="post" theme="simple" cssClass="form">
                            <s:hidden name="product.productId" value="%{productId}"/>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1"><i class="bx bxs-box"></i></span>
                                </div>
                                <s:textfield name="product.name" cssClass="form-control"
                                             placeholder="Nombre del Producto" aria-label="Nombre"
                                             aria-describedby="basic-addon1" readonly="%{mode == 'view'}"/>
                            </div>

                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon2"><i
                                            class="bx bx-buildings"></i></span>
                                </div>
                                <s:textfield name="product.brand" cssClass="form-control"
                                             placeholder="Marca del Producto" aria-label="Marca"
                                             aria-describedby="basic-addon2" readonly="%{mode == 'view'}"/>
                            </div>

                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon3"><i
                                            class="bx bx-purchase-tag-alt"></i></span>
                                </div>
                                <s:textfield name="product.price" cssClass="form-control" placeholder="Precio"
                                             aria-label="Precio" aria-describedby="basic-addon3"
                                             readonly="%{mode == 'view'}" maxlength="10"/>
                            </div>

                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon4"><i
                                            class="bx bx-comment"></i></span>
                                </div>
                                <s:textarea name="product.description" cssClass="form-control"
                                            placeholder="Descripción del Producto" aria-label="Descripción"
                                            aria-describedby="basic-addon4" disabled="%{mode == 'view'}"/>
                            </div>
                            <s:if test="%{mode == 'edit'}">
                                <s:submit cssClass="btn btn-primary" value="Guardar Cambios"/>
                            </s:if>
                            <s:elseif test="%{mode == 'add'}">
                                <s:submit cssClass="btn btn-primary" value="Crear Producto"/>
                            </s:elseif>
                        </s:form>

                    </div>
                </div>
            </div>
            <%--            </div>--%>

        </div>
    </div>
</div>
<!-- END: Content-->


<div class="sidenav-overlay"></div>
<div class="drag-target"></div>

<!-- BEGIN: Footer-->
<footer class="footer footer-static footer-light">
    <p class="clearfix mb-0"><span class="float-left d-inline-block">2020 &copy; PIXINVENT</span><span
            class="float-right d-sm-inline-block d-none">Crafted with<i
            class="bx bxs-heart pink mx-50 font-small-3"></i>by<a class="text-uppercase"
                                                                  href="https://1.envato.market/pixinvent_portfolio"
                                                                  target="_blank">Pixinvent</a></span>
        <button class="btn btn-primary btn-icon scroll-top" type="button"><i class="bx bx-up-arrow-alt"></i></button>
    </p>
</footer>
<!-- END: Footer-->


<!-- BEGIN: Vendor JS-->
<script src="/PradaStruts2/vendors/js/vendors.min.js"></script>
<script src="/PradaStruts2/fonts/LivIconsEvo/js/LivIconsEvo.tools.js"></script>
<script src="/PradaStruts2/fonts/LivIconsEvo/js/LivIconsEvo.defaults.js"></script>
<script src="/PradaStruts2/fonts/LivIconsEvo/js/LivIconsEvo.min.js"></script>
<!-- BEGIN Vendor JS-->

<!-- BEGIN: Page Vendor JS-->
<!-- END: Page Vendor JS-->

<!-- BEGIN: Theme JS-->
<script src="/PradaStruts2/js/scripts/configs/vertical-menu-dark.js"></script>
<script src="/PradaStruts2/js/core/app-menu.js"></script>
<script src="/PradaStruts2/js/core/app.js"></script>
<script src="/PradaStruts2/js/scripts/components.js"></script>
<script src="/PradaStruts2/js/scripts/footer.js"></script>
<!-- END: Theme JS-->

<!-- BEGIN: Page JS-->
<!-- END: Page JS-->

</body>
<!-- END: Body-->

</html>

