
<%@page import="org.mig.java.Entities.Categoria"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<!-- BREADCRUMBS -->
<section class="breadcrumb parallax margbot30"></section>
<!-- //BREADCRUMBS -->


<!-- PAGE HEADER -->
<section class="page_header">

    <!-- CONTAINER -->
    <div class="container">
        <h3 class="pull-left"><b>Catalogo</b></h3>

        <div class="pull-right">
            <a href="Controller?opID=RedirectContent" >Volver a la tienda<i class="fa fa-angle-right"></i></a>
        </div>
    </div><!-- //CONTAINER -->
</section><!-- //PAGE HEADER -->


<!-- PRODUCT CATALOG SECTION -->
<section class="product_catalog_block">

    <!-- CONTAINER -->
    <div class="container">

        <!-- ROW -->
        <div class="row">
            <%
                List<Categoria> categorias = (ArrayList<Categoria>) request.getAttribute("categorias");
                List<Categoria> clasificaciones = (ArrayList<Categoria>) request.getAttribute("clasificacion");

                for (Categoria clasificacion : clasificaciones) {
                    String nombreClasificacion = clasificacion.getClasificacion();
            %>

            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 col-ss-12 product_catalog_item clearfix">








                <img class="product_catalog_img product_women" src="images/tovar/product_women.jpg" alt="" />
                <p class="product_catalog_title"><%=nombreClasificacion%></p>
                <ul class="product_catalog_list">
                    <%for (Categoria categoria : categorias) {
                            String nombreCategoria = categoria.getDescripcion();
                            String categoriaClasificacion = categoria.getClasificacion();
                            int IdCategoria = categoria.getIdCategoria();

                            if (categoriaClasificacion.equals(nombreClasificacion)) {


                    %>




                    <li><a href="Controller?opID=MostrarProductosCatalogo&Categoria=<%=IdCategoria%>&nombreCategoria=<%=nombreCategoria%>" ><%=nombreCategoria%></a></li>



                    <% }
                        }%>
                </ul>
            </div>
            <% }%>

        </div><!-- //ROW -->
    </div><!-- //CONTAINER -->
</section><!-- //PRODUCT CATALOG SECTION -->