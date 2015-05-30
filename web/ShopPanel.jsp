<%@page import="org.mig.java.Entities.Tiendas"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html;charset=UTF-8"%>
<!-- BREADCRUMBS -->
<section class="breadcrumb parallax margbot30"></section>
<!-- //BREADCRUMBS -->


<!-- PAGE HEADER -->
<section class="page_header">

    <!-- CONTAINER -->
    <div class="container">
        <h3 class="pull-left"><b>Panel de Administracion de Propietario</b></h3>

        <div class="pull-right">
            <a href="Controller?opID=RedirectContent" >Volver a la tienda<i class="fa fa-angle-right"></i></a>
        </div>
    </div><!-- //CONTAINER -->
</section><!-- //PAGE HEADER -->
<!-- MY ACCOUNT PAGE -->
<!-- CONTAINER -->
<div class="container">

    <div class="my_account_block clearfix">
        <div class="new_customers">
            <h1>Tiendas</h1>
            <%
                List<Tiendas> tiendas = (List<Tiendas>) request.getAttribute("propietarioTiendas");

                for (Tiendas tienda : tiendas) {
                    String cif = tienda.getCif();
                    String nombreTienda = tienda.getNombre();
            %>

            <li><a href="Controller?VerTienda&tienda=<%=cif%>"><%=nombreTienda%></a></li>


            <%}%>
        </div>
    </div>

</div><!-- //CONTAINER -->