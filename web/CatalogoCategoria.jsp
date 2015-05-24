
<%@page import="org.mig.java.Entities.Usuarios"%>
<%@page import="java.util.List"%>
<%@page import="org.mig.java.Entities.Productos"%>
<%@page contentType="text/html;charset=UTF-8"%>
<!-- BREADCRUMBS -->
<section class="breadcrumb women parallax margbot30">

    <%
        String categoria = (String) request.getAttribute("nombreCategoria");
        Integer idCategoria = (Integer) request.getSession().getAttribute("categoriaID");
        Usuarios sesion = (Usuarios) request.getSession().getAttribute("clienteSesion");

    %>

    <!-- CONTAINER -->
    <div class="container">
        <h2><%=categoria%></h2>
    </div><!-- //CONTAINER -->
</section><!-- //BREADCRUMBS -->


<!-- SHOP BLOCK -->
<section class="shop">

    <!-- CONTAINER -->
    <div class="container">

        <!-- ROW -->
        <div class="row">

            <!-- SIDEBAR -->
            <div id="sidebar" class="col-lg-3 col-md-3 col-sm-3 padbot50">

                <!-- CATEGORIES -->
                <div class="sidepanel widget_categories">
                    <h3>Product Categories</h3>
                    <ul>
                        <li><a href="javascript:void(0);" >Sweaters</a></li>
                        <li><a href="javascript:void(0);" >SHIRTS &amp; TOPS</a></li>
                        <li><a href="javascript:void(0);" >KNITS &amp; TEES</a></li>
                        <li><a href="javascript:void(0);" >PANTS</a></li>
                        <li><a href="javascript:void(0);" >DENIM</a></li>
                        <li><a href="javascript:void(0);" >DRESSES</a></li>
                        <li><a href="javascript:void(0);" >Maternity</a></li>
                    </ul>
                </div><!-- //CATEGORIES -->

                <!-- PRICE RANGE -->
                <div class="sidepanel widget_pricefilter">
                    <h3>Filter by price</h3>
                    <div id="price-range" class="clearfix">
                        <label for="amount">Range:</label>
                        <input type="text" id="amount"/>
                        <div class="padding-range"><div id="slider-range"></div></div>
                    </div>
                </div><!-- //PRICE RANGE -->

                <!-- SHOP BY SIZE -->
                <div class="sidepanel widget_sized">
                    <h3>SHOP BY SIZE</h3>
                    <ul>
                        <li><a class="sizeXS" href="javascript:void(0);" >XS</a></li>
                        <li class="active"><a class="sizeS" href="javascript:void(0);" >S</a></li>
                        <li><a class="sizeM" href="javascript:void(0);" >M</a></li>
                        <li><a class="sizeL" href="javascript:void(0);" >L</a></li>
                        <li><a class="sizeXL" href="javascript:void(0);" >XL</a></li>
                    </ul>
                </div><!-- //SHOP BY SIZE -->

                <!-- SHOP BY COLOR -->
                <div class="sidepanel widget_color">
                    <h3>SHOP BY COLOR</h3>
                    <ul>
                        <li><a class="color1" href="javascript:void(0);" ></a></li>
                        <li class="active"><a class="color2" href="javascript:void(0);" ></a></li>
                        <li><a class="color3" href="javascript:void(0);" ></a></li>
                        <li><a class="color4" href="javascript:void(0);" ></a></li>
                        <li><a class="color5" href="javascript:void(0);" ></a></li>
                        <li><a class="color6" href="javascript:void(0);" ></a></li>
                        <li><a class="color7" href="javascript:void(0);" ></a></li>
                        <li><a class="color8" href="javascript:void(0);" ></a></li>
                    </ul>
                </div><!-- //SHOP BY COLOR -->

                <!-- SHOP BY BRANDS -->
                <div class="sidepanel widget_brands">
                    <h3>SHOP BY BRANDS</h3>
                    <input type="checkbox" id="categorymanufacturer1" /><label for="categorymanufacturer1">VERSACE <span>(24)</span></label>
                    <input type="checkbox" id="categorymanufacturer2" /><label for="categorymanufacturer2">J CREW <span>(35)</span></label>
                    <input type="checkbox" id="categorymanufacturer3" /><label for="categorymanufacturer3">Calvin KlEin <span>(48)</span></label>
                    <input type="checkbox" id="categorymanufacturer4" /><label for="categorymanufacturer4">Tommy hilfiger <span>(129)</span></label>
                    <input type="checkbox" id="categorymanufacturer5" /><label for="categorymanufacturer5">Ralph Lauren <span>(69)</span></label>
                </div><!-- //SHOP BY BRANDS -->

                <!-- BANNERS WIDGET -->
                <div class="widget_banners">
                    <a class="banner nobord margbot10" href="javascript:void(0);" ><img src="images/tovar/banner10.jpg" alt="" /></a>
                    <a class="banner nobord margbot10" href="javascript:void(0);" ><img src="images/tovar/banner9.jpg" alt="" /></a>
                    <a class="banner nobord margbot10" href="javascript:void(0);" ><img src="images/tovar/banner8.jpg" alt="" /></a>
                </div><!-- //BANNERS WIDGET -->

            </div><!-- //SIDEBAR -->


            <!-- SHOP PRODUCTS -->
            <div class="col-lg-9 col-sm-9 col-sm-9 padbot20">

                <!-- SHOP BANNER -->
                <div class="banner_block margbot15">
                    <a class="banner nobord" href="javascript:void(0);" ><img src="images/tovar/banner21.jpg" alt="" /></a>
                </div><!-- //SHOP BANNER -->

                <!-- SORTING TOVAR PANEL -->
                <div class="sorting_options clearfix">

                    <!-- COUNT TOVAR ITEMS -->
                    <div class="count_tovar_items">
                        <p><%=categoria%></p>
                    </div><!-- //COUNT TOVAR ITEMS -->

                </div><!-- //SORTING TOVAR PANEL -->


                <!-- ROW -->
                <div class="row shop_block">


                    <%        List<Productos> listaProductos = (List) request.getAttribute("productosPaginados");

                        for (int i = 0; i < listaProductos.size(); i++) {
                            String referencia = listaProductos.get(i).getReferencia();
                            String nombre = listaProductos.get(i).getNombre();
                            String precio = String.valueOf(listaProductos.get(i).getPrecio());


                    %>
                    <!-- TOVAR1 -->
                    <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6 col-ss-12 padbot40">
                        <div class="tovar_item">
                            <div class="tovar_img">
                                <div class="tovar_img_wrapper">
                                    <img class="img" src="images/tovar/women/1.jpg" alt="" />
                                    <img class="img_h" src="images/tovar/women/1_2.jpg" alt="" />
                                </div>
                                <div class="tovar_item_btns">
                                    <div class="open-project-link"><a class="open-project tovar_view" href="Controller?opID=MostrarProducto&Referencia=<%=referencia%> " >Ver</a></div>

                                    <%

                                        if (sesion != null) {

                                    %>

                                    <a class="add_bag" href="Controller?opID=RealizarPedido&referencia=<%=referencia%>" ><i class="fa fa-shopping-cart"></i></a>
                                        <%}%>
                                </div>
                            </div>
                            <div class="tovar_description clearfix">
                                <a class="tovar_title" href="Controller?opID=MostrarProducto&Referencia=<%=referencia%> " ><%=nombre%></a>
                                <span class="tovar_price">€<%=precio%></span>
                            </div>
                        </div>
                    </div><!-- //TOVAR1 -->


                    <%}%>
                </div>
                <hr>

                <div class="clearfix">
                    <!-- PAGINATION -->
                    <ul class="pagination">
                        <%
                            Integer numeroPagina = (Integer) request.getSession().getAttribute("pagina");
                            //Integer paginaFinal = (Integer) request.getSession().getAttribute("ultimaPaginaDisco");//-->Paginado en Disco
                            int paginaFinal = (Integer) request.getSession().getAttribute("ultimaPagina"); //-->PAginado normal
                            if (numeroPagina != 1) {
                        %>




                        <li><a href="Controller?opID=MostrarProductosCatalogo&Categoria=<%=idCategoria%>&nombreCategoria=<%=categoria%>&Operacion=1"><<</a></li>
                        <li><a href="Controller?opID=MostrarProductosCatalogo&Categoria=<%=idCategoria%>&nombreCategoria=<%=categoria%>&Operacion=2&pagina=<%=numeroPagina + 1%>"><</a></li>

                        <%}%>


                        <%
                            for (int i = 0; i < paginaFinal; i++) {

                                if (numeroPagina == i + 1) {
                        %><b><li class="active"><a><%=i + 1%></a></li></b><%
                                    } else {
                                    %>
                        <li>  <li><a href='Controller?opID=MostrarProductosCatalogo&Categoria=<%=idCategoria%>&nombreCategoria=<%=categoria%>&Operacion=3&paginaDirecta=<%=i + 1%>'><%=i + 1%></a></li>
                            <%}
                                }%>

                        <%if (numeroPagina != paginaFinal) {%>
                        <li><a href="Controller?opID=MostrarProductosCatalogo&Categoria=<%=idCategoria%>&nombreCategoria=<%=categoria%>&Operacion=4&pagina=<%=numeroPagina + 1%>">></a>    </li>
                        <li><a href="Controller?opID=MostrarProductosCatalogo&Categoria=<%=idCategoria%>&nombreCategoria=<%=categoria%>&Operacion=5">>></a></li>
                            <%}%>



                    </ul><!-- //PAGINATION -->
                </div>











                <hr>

                <div class="padbot60 services_section_description">
                    <p>LOREM IPSUM</p>
                    <span>Gluten-free quinoa selfies carles, kogi gentrify retro marfa viral. Odd future photo booth flannel ethnic pug, occupy keffiyeh synth blue bottle tofu tonx iphone. Blue bottle 90′s vice trust fund gastropub gentrify retro marfa viral. Gluten-free quinoa selfies carles, kogi gentrify retro marfa viral. Odd future photo booth flannel ethnic pug, occupy keffiyeh synth blue bottle tofu tonx iphone. Blue bottle 90′s vice trust fund gastropub gentrify retro marfa viral.</span>
                </div>

                <!-- SHOP BANNER -->
                <div class="row top_sale_banners center">
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 col-ss-12"><a class="banner nobord margbot30" href="javascript:void(0);" ><img src="images/tovar/banner22.jpg" alt="" /></a></div>
                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8 col-ss-12"><a class="banner nobord margbot30" href="javascript:void(0);" ><img src="images/tovar/banner23.jpg" alt="" /></a></div>
                </div><!-- //SHOP BANNER -->
            </div><!-- //SHOP PRODUCTS -->
        </div><!-- //ROW -->
    </div><!-- //CONTAINER -->
</section><!-- //SHOP -->