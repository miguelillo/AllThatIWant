<%-- 
    Document   : ShoppingBag
    Created on : 20-may-2015, 21:43:12
    Author     : miguelangel
--%>

<%@page import="java.sql.Date"%>
<%@page import="org.mig.java.Entities.Usuarios"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.mig.java.Entities.Pedidos"%>
<%@page import="org.mig.java.Entities.Productos"%>
<%@page import="java.util.List"%>
<%@page import="org.mig.java.Entities.Productos"%>
<%@page contentType="text/html;charset=UTF-8"%>


<%
    Usuarios usuarioActual = (Usuarios) request.getAttribute("showUser");
    Usuarios usuarioActual2 = (Usuarios) request.getSession().getAttribute("usuarioValido");
    String nombre = usuarioActual.getNombre();
    String apellido1 = usuarioActual.getApellido1();
    String apellido2 = usuarioActual.getApellido2();
    String dni = usuarioActual.getDni();
    String mail = usuarioActual.getMail();
    String urlImagen = usuarioActual.getImagenUrl();
    String sexo = usuarioActual.getSexo();
    // String fechaNacimiento = usuarioActual.getFechaNacimiento();
    String perfil = usuarioActual.getPerfil();
    String pais = usuarioActual.getPais();


%>
<!-- BREADCRUMBS -->
<section class="breadcrumb parallax margbot30"></section>
<!-- //BREADCRUMBS -->


<!-- PAGE HEADER -->
<section class="page_header">

    <!-- CONTAINER -->
    <div class="container">
        <h3 class="pull-left"><b>Panel de Administracion de usuario</b></h3>

        <div class="pull-right">
            <a href="Controller?opID=RedirectContent" >Volver a la tienda<i class="fa fa-angle-right"></i></a>
        </div>
    </div><!-- //CONTAINER -->
</section><!-- //PAGE HEADER -->


<!-- SHOPPING BAG BLOCK -->
<section class="shopping_bag_block">

    <!-- CONTAINER -->
    <div class="container">

        <!-- ROW -->
        <div class="row">

            <!-- CART TABLE -->
            <div class="col-lg-9 col-md-9 padbot40">

                <table class="shop_table">
                    <thead>
                        <tr>
                            <th class="product-thumbnail"></th>
                            <th class="product-name">Objeto</th>
                            <th class="product-price">Precio</th>
                            <th class="product-subtotal">Estado</th>
                            <th class="product-remove"></th>
                        </tr>
                    </thead>

                </table>
            </div><!-- //CART TABLE -->


            <!-- SIDEBAR -->
            <div id="sidebar" class="col-lg-3 col-md-3 padbot50">

                <!-- BAG TOTALS -->
                <div class="sidepanel widget_bag_totals">
                    <h3><%=nombre%><%=apellido1 + apellido2%></h3>
                    <table class="bag_total">
                        <tr class="cart-subtotal clearfix">
                        <img src="<%=urlImagen%>" alt="Imagen <%=nombre%>"/>
                        </tr>
                        <tr class="cart-subtotal clearfix">
                            <th>E-Mail</th>
                            <td><%=mail%></td>
                        </tr>
                        <tr class="shipping clearfix">
                            <th>Sexo</th>
                            <td><%=sexo%></td>
                        </tr>

                        <tr class="shipping clearfix">
                            <th>Pais</th>
                            <td><%=pais%></td>
                        </tr>
                        <tr class="shipping clearfix">
                            <th>Fecha Nacimiento</th>
                            <td>Gratis</td>
                        </tr>
                        <tr class="shipping clearfix">
                            <th>Perfil</th>
                            <td><%=perfil%></td>
                        </tr>
                    </table>

                </div><!-- //REGISTRATION FORM -->
            </div><!-- //SIDEBAR -->
        </div><!-- //ROW -->
    </div><!-- //CONTAINER -->
</section><!-- //SHOPPING BAG BLOCK -->
