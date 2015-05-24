
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
            <a href="women.html" >Volver a la tienda<i class="fa fa-angle-right"></i></a>
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


<!-- PRODUCT CATALOG SECTION -->
<section class="product_catalog_block">

    <!-- CONTAINER -->
    <div class="container">

        <!-- ROW -->
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 col-ss-12 product_catalog_item clearfix">
                <img class="product_catalog_img product_girls" src="images/tovar/product_girls.jpg" alt="" />
                <p class="product_catalog_title">Girls</p>
                <ul class="product_catalog_list">


                </ul>
            </div>

            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 col-ss-12 product_catalog_item clearfix">
                <img class="product_catalog_img product_boys" src="images/tovar/product_boys.jpg" alt="" />
                <p class="product_catalog_title">Boys</p>
                <ul class="product_catalog_list">
                    <li><a href="women.html" >TEES & POLOS</a></li>
                    <li><a href="women.html" >GRAPHICS SHOP</a></li>
                    <li><a href="women.html" >HOODIES & SWEATSHIRTS</a></li>
                    <li><a href="women.html" >SWEATERS</a></li>
                    <li><a href="women.html" >SWIM & RASH GUARDS</a></li>
                    <li><a href="women.html" >SUITING</a></li>
                    <li><a href="women.html" >SPORTCOATS & VESTS</a></li>
                    <li><a href="women.html" >TIES, BOW TIES & POCKET SQUARES</a></li>
                </ul>
            </div>
        </div><!-- //ROW -->
    </div><!-- //CONTAINER -->
</section><!-- //PRODUCT CATALOG SECTION -->


<!-- PRODUCT CATALOG SECTION -->
<section class="product_catalog_block last">

    <!-- CONTAINER -->
    <div class="container">

        <!-- ROW -->
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 col-ss-12 product_catalog_item clearfix">
                <img class="product_catalog_img product_shoes" src="images/tovar/product_shoes.jpg" alt="" />
                <p class="product_catalog_title">Shoes</p>
                <ul class="product_catalog_list">
                    <li><a href="women.html" >sandals</a></li>
                    <li><a href="women.html" >ballet flats</a></li>
                    <li><a href="women.html" >flats</a></li>
                    <li><a href="women.html" >boat shoes</a></li>
                    <li><a href="women.html" >loafers & oxfords</a></li>
                    <li><a href="women.html" >pumps & heels</a></li>
                    <li><a href="women.html" >boots</a></li>
                    <li><a href="women.html" >sneakers</a></li>
                </ul>
            </div>

            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 col-ss-12 product_catalog_item clearfix">
                <img class="product_catalog_img product_jewelry" src="images/tovar/product_jewelry.jpg" alt="" />
                <p class="product_catalog_title">Jewelry</p>
                <ul class="product_catalog_list">
                    <li><a href="women.html" >Rings</a></li>
                    <li><a href="women.html" >Necklaces & pendants</a></li>
                    <li><a href="women.html" >earrings</a></li>
                    <li><a href="women.html" >bracelets</a></li>
                    <li><a href="women.html" >Watches</a></li>
                </ul>
            </div>
        </div><!-- //ROW -->
    </div><!-- //CONTAINER -->
</section><!-- //PRODUCT CATALOG SECTION -->

<!-- MEGA MENU -->
<ul class="mega_menu megamenu_col3 clearfix">

    <li class="col">
        <ol>


        </ol>
    </li>



</ul><!-- //MEGA MENU -->