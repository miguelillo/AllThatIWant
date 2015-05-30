
<%@page import="org.mig.java.Entities.Usuarios"%>
<%@page import="org.mig.java.Entities.Tiendas"%>
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
            <%
                Tiendas tienda = (Tiendas) request.getAttribute("tiendaPropietario");
                String cif = tienda.getCif();
                String nombre = tienda.getNombre();

                String urlImagentienda = tienda.getUrlImagen();
                
                
     

            %>
            <!-- CART TABLE -->
            <div class="col-lg-9 col-md-9 padbot40">

                <table class="shop_table">
                    <thead>
                    <ul>

                        <li><a href="Controller?opID=CrearProductos&Tienda=<%=cif%>">Insertar nuevo Producto</a></li>
                    </ul>
                    </thead>
                    <tbody>


                    </tbody>
                </table>
            </div>
            <!-- SIDEBAR -->
            <div id="sidebar" class="col-lg-3 col-md-3 padbot50">

                <!-- BAG TOTALS -->
                <div class="sidepanel widget_bag_totals">
                    <h3><%=nombre%></h3>
                    <table class="bag_total">
                        <tr class="cart-subtotal clearfix">
                        <img src="<%=urlImagentienda%>" alt="Imagen <%=nombre%>"/>
                        </tr>
                        <tr class="cart-subtotal clearfix">
                            <th>cif</th>
                            <td><%=cif%></td>
                        </tr>

                    </table>

                </div><!-- //REGISTRATION FORM -->
            </div><!-- //SIDEBAR -->
        </div><!-- //ROW -->
    </div><!-- //CONTAINER -->
</section><!-- //SHOPPING BAG BLOCK -->
