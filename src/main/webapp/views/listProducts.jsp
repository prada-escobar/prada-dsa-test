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
    <title>Prada Test</title>
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
                    <li class="active"><a href="<s:url action='listProducts'/>"><i
                            class="bx bx-right-arrow-alt"></i><span
                            class="menu-item" data-i18n="Invoice List">Listado</span></a>
                    </li>
                    <li><a href="<s:url action='addProductForm'/>"><i class="bx bx-right-arrow-alt"></i><span
                            class="menu-item"
                            data-i18n="Invoice">Crear Nuevo</span></a>
                    </li>
                </ul>
            </li>
            <li class=" nav-item"><a href="#"><i class="menu-livicon" data-icon="star"></i><span class="menu-title"
                                                                                                 data-i18n="Invoice">Reviews</span></a>
                <ul class="menu-content">
                    <li><a href="<s:url action='listReviews'/>"><i class="bx bx-right-arrow-alt"></i><span
                            class="menu-item"
                            data-i18n="Invoice List">Listado</span></a>
                    </li>
                    <li><a href="<s:url action='addReviewForm'/>"><i class="bx bx-right-arrow-alt"></i><span
                            class="menu-item"
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
                        <h5 class="content-header-title float-left pr-1 mb-0">Listado de Productos</h5>
                        <div class="breadcrumb-wrapper col-12">
                            <ol class="breadcrumb p-0 mb-0">
                                <li class="breadcrumb-item"><a href="<s:url action='listProducts'/>"><i
                                        class="bx bx-home-alt"></i></a>
                                </li>
                                <li class="breadcrumb-item"><a href="<s:url action='listProducts'/>">Producto</a>
                                </li>
                                <li class="breadcrumb-item active"><a href="#">Listado</a>
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-body">
            <!-- invoice list -->
            <section class="invoice-list-wrapper">
                <!-- create invoice button-->
                <div class="invoice-create-btn mb-1">
                    <a href="<s:url action='addProductForm'/>" class="btn btn-primary glow invoice-create" role="button"
                       aria-pressed="true">Nuevo Producto</a>
                </div>

                <div class="row" id="table-hover-row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-content">
                                <div class="table-responsive">
                                    <table class="table table-hover mb-0 invoice-data-table">
                                        <thead>
                                        <tr>
                                            <th>Nombre</th>
                                            <th>Descripción</th>
                                            <th>Marca</th>
                                            <th>Precio</th>
                                            <th>Puntuación</th>
                                            <th>Acciones</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <s:iterator value="products">
                                            <tr>
                                                <td class="text-bold-500"><s:property value="name"/></td>
                                                <td><s:property value="description"/></td>
                                                <td><s:property value="brand"/></td>
                                                <td><s:property value="getText('{0,number,#,##0.00}', {price})"/></td>
                                                <td title="<s:property value="reviewCount"/> reviews"><s:property
                                                        value="reviewAverage"/>/5
                                                </td>
                                                <td>
                                                    <div class="invoice-action">
                                                        <!-- Enlace para ver el producto (asumiendo que tienes una acción para esto) -->
                                                        <a href="<s:url action='viewProduct' namespace='/'><s:param name='productId'><s:property value='productId'/></s:param></s:url>"
                                                           class="invoice-action-view mr-1">
                                                            <i class="bx bx-show-alt"></i>
                                                        </a>
                                                        <!-- Enlace para editar el producto -->
                                                        <a href="<s:url action='editProduct' namespace='/'><s:param name='productId'><s:property value='productId'/></s:param></s:url>"
                                                           class="invoice-action-edit mr-1 cursor-pointer">
                                                            <i class="bx bx-edit"></i>
                                                        </a>
                                                        <!-- Enlace para borrar el producto (asumiendo que tienes una acción para esto) -->
                                                        <a href="#delete" data-toggle="modal"
                                                           data-product-id="${productId}"
                                                           class="invoice-action-delete mr-1 cursor-pointer">
                                                            <i class="bx bx-trash"></i>
                                                        </a>
                                                        <!-- Enlace para generar PDF (asumiendo que tienes una acción para esto) -->
                                                        <a href="<s:url action='downloadPdf' namespace='/' ><s:param name='productId'>${productId}</s:param></s:url>"
                                                           class="invoice-action-pdf cursor-pointer">
                                                            <i class="bx bxs-file-pdf"></i>
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </s:iterator>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </section>
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

<div class="modal fade text-left" id="delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel120"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-header bg-danger">
                <h5 class="modal-title white" id="myModalLabel120">Eliminar Producto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <i class="bx bx-x"></i>
                </button>
            </div>
            <div class="modal-body">
                ¿Está seguro de que desea eliminar el producto?
            </div>
            <div class="modal-footer">
                <s:form action="deleteProduct" method="post">
                    <s:hidden id="deleteProductId" name="productId"/>
                    <s:submit type="button" cssClass="btn btn-danger ml-1" value="Aceptar"/>
                </s:form>
                <button type="button" class="btn btn-light-secondary" data-dismiss="modal">
                    <i class="bx bx-x d-block d-sm-none"></i>
                    <span class="d-none d-sm-block">Cerrar</span>
                </button>
            </div>
        </div>
    </div>
</div>


<!-- BEGIN: Vendor JS-->
<script src="/PradaStruts2/vendors/js/vendors.min.js"></script>
<script src="/PradaStruts2/fonts/LivIconsEvo/js/LivIconsEvo.tools.js"></script>
<script src="/PradaStruts2/fonts/LivIconsEvo/js/LivIconsEvo.defaults.js"></script>
<script src="/PradaStruts2/fonts/LivIconsEvo/js/LivIconsEvo.min.js"></script>
<!-- BEGIN Vendor JS-->
<!-- BEGIN: Theme JS-->
<script src="/PradaStruts2/js/scripts/configs/vertical-menu-dark.js"></script>
<script src="/PradaStruts2/js/core/app-menu.js"></script>
<script src="/PradaStruts2/js/core/app.js"></script>
<script src="/PradaStruts2/js/scripts/components.js"></script>
<script src="/PradaStruts2/js/scripts/footer.js"></script>
<!-- END: Theme JS-->

<!-- BEGIN: Page JS-->
<script type="application/javascript">
    $('#delete').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget);
        var productId = button.data('product-id');
        var modal = $(this);
        modal.find('#deleteProductId').val(productId);
    });
</script>
<!-- END: Page JS-->

</body>
<!-- END: Body-->

</html>

