<%@page contentType="text/html;charset=UTF-8"%>
<%@page import="org.mig.java.BLL.ProductosBLL"%>
<%@page import="java.util.List"%>
<%@page import="org.mig.java.Entities.Productos"%>
<%@page import="org.mig.java.Entities.Productos"%>
<%@page import="org.mig.java.Entities.Usuarios"%>
<!-- HOME -->
<section id="home" class="padbot0">

    <!-- TOP SLIDER -->
    <%
        Usuarios sesion = (Usuarios) request.getSession().getAttribute("clienteSesion");
        if (sesion == null) {

            //cargar un servelet automaticamente cuando llega a este paso
    %>    
    <div class="flexslider top_slider">
        <ul class="slides">
            <li class="slide1">

                <!-- CONTAINER -->
                <div class="container">
                    <div class="flex_caption1">
                        <p class="title1 captionDelay2 FromTop">Ofertas!</p>
                        <p class="title2 captionDelay3 FromTop">Ultima Semana</p>
                    </div>
                    <a class="flex_caption2" href="javascript:void(0);" ><div class="middle">Venta<span>Tienda</span>Ahora</div></a>
                    <div class="flex_caption3 slide_banner_wrapper">
                        <a class="slide_banner slide1_banner1 captionDelay4 FromBottom" href="javascript:void(0);" ><img src="images/slider/slide1_baner1.jpg" alt="" /></a>
                        <a class="slide_banner slide1_banner2 captionDelay5 FromBottom" href="javascript:void(0);" ><img src="images/slider/slide1_baner2.jpg" alt="" /></a>
                        <a class="slide_banner slide1_banner3 captionDelay6 FromBottom" href="javascript:void(0);" ><img src="images/slider/slide1_baner3.jpg" alt="" /></a>
                    </div>
                </div><!-- //CONTAINER -->
            </li>
            <li class="slide2">

                <!-- CONTAINER -->
                <div class="container">
                    <div class="flex_caption1">
                        <p class="title1 captionDelay2 FromTop">Ofertas!</p>
                        <p class="title2 captionDelay3 FromTop">Ultima Semana</p>
                    </div>
                    <a class="flex_caption2" href="javascript:void(0);" ><div class="middle">Venta<span>Tienda</span>Ahora</div></a>
                    <div class="flex_caption3 slide_banner_wrapper">
                        <a class="slide_banner slide1_banner1 captionDelay4 FromBottom" href="javascript:void(0);" ><img src="images/slider/slide1_baner1.jpg" alt="" /></a>
                        <a class="slide_banner slide1_banner2 captionDelay5 FromBottom" href="javascript:void(0);" ><img src="images/slider/slide1_baner2.jpg" alt="" /></a>
                        <a class="slide_banner slide1_banner3 captionDelay6 FromBottom" href="javascript:void(0);" ><img src="images/slider/slide1_baner3.jpg" alt="" /></a>
                    </div>
                </div><!-- //CONTAINER -->
            </li>

        </ul>
    </div><!-- //TOP SLIDER -->
    <!-- TOVAR SECTION -->
    <section class="tovar_section">

        <!-- CONTAINER -->
        <div class="container containerFix">
            <h2>Productos Destacados</h2>

            <!-- ROW -->
            <div class="row">

                <!-- TOVAR WRAPPER -->
                <div class="tovar_wrapper" data-appear-top-offset='-100' data-animated='fadeInUp'>
                    <%        List<Productos> listaProductos = (List) request.getSession().getAttribute("listaProductos");

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
                                    <%if (sesion != null) {%>
                                    <a class="add_bag" href="javascript:void(0);" ><i class="fa fa-shopping-cart"></i></a>
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

                    <div class="respond_clear_768"></div>

                    <!-- BANNER -->
                    <div class="col-lg-3 col-md-3 col-xs-6 col-ss-12">
                        <a class="banner type1 margbot30" href="javascript:void(0);" ><img src="images/tovar/banner1.jpg" alt="" /></a>
                        <a class="banner type2 margbot40" href="javascript:void(0);" ><img src="images/tovar/banner2.jpg" alt="" /></a>
                    </div><!-- //BANNER -->
                </div><!-- //TOVAR WRAPPER -->
            </div><!-- //ROW -->


            <!-- ROW -->
            <div class="row">

                <!-- TOVAR WRAPPER -->
                <div class="tovar_wrapper" data-appear-top-offset='-100' data-animated='fadeInUp'>

                    <!-- BANNER -->
                    <div class="col-lg-3 col-md-3 col-xs-6 col-ss-12">
                        <a class="banner type3 margbot40" href="javascript:void(0);" ><img src="images/tovar/banner3.jpg" alt="" /></a>
                    </div><!-- //BANNER -->

                    <div class="respond_clear_768"></div>

                    <!-- TOVAR4 -->
                    <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6 col-ss-12 padbot40">
                        <div class="tovar_item">
                            <div class="tovar_img">
                                <div class="tovar_img_wrapper">
                                    <img class="img" src="images/tovar/women/4.jpg" alt="" />
                                    <img class="img_h" src="images/tovar/women/4_2.jpg" alt="" />
                                </div>
                                <div class="tovar_item_btns">
                                    <div class="open-project-link"><a class="open-project tovar_view" href="%21projects/women/4.html" >Ver</a></div>
                                    <a class="add_bag" href="javascript:void(0);" ><i class="fa fa-shopping-cart"></i></a>
                                    <a class="add_lovelist" href="javascript:void(0);" ><i class="fa fa-heart"></i></a>
                                </div>
                            </div>
                            <div class="tovar_description clearfix">
                                <a class="tovar_title" href="product-page.html" >Peacoat trench</a>
                                <span class="tovar_price">?298.00</span>
                            </div>
                        </div>
                    </div><!-- //TOVAR4 -->

                    <!-- TOVAR5 -->
                    <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6 col-ss-12 padbot40">
                        <div class="tovar_item tovar_sale">
                            <div class="tovar_img">
                                <div class="tovar_img_wrapper">
                                    <img class="img" src="images/tovar/women/5.jpg" alt="" />
                                    <img class="img_h" src="images/tovar/women/5_2.jpg" alt="" />
                                </div>
                                <div class="tovar_item_btns">
                                    <div class="open-project-link"><a class="open-project tovar_view" href="%21projects/women/5.html" >Ver</a></div>
                                    <a class="add_bag" href="javascript:void(0);" ><i class="fa fa-shopping-cart"></i></a>
                                    <a class="add_lovelist" href="javascript:void(0);" ><i class="fa fa-heart"></i></a>
                                </div>
                            </div>
                            <div class="tovar_description clearfix">
                                <a class="tovar_title" href="product-page.html" >Schoolboy blazer in italian wool</a>
                                <span class="tovar_price">?194.00</span>
                            </div>
                        </div>
                    </div><!-- //TOVAR5 -->

                    <!-- TOVAR6 -->
                    <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6 col-ss-12 padbot40">
                        <div class="tovar_item">
                            <div class="tovar_img">
                                <div class="tovar_img_wrapper">
                                    <img class="img" src="images/tovar/women/6.jpg" alt="" />
                                    <img class="img_h" src="images/tovar/women/6_2.jpg" alt="" />
                                </div>
                                <div class="tovar_item_btns">
                                    <div class="open-project-link"><a class="open-project tovar_view" href="%21projects/women/6.html" >Ver</a></div>
                                    <a class="add_bag" href="javascript:void(0);" ><i class="fa fa-shopping-cart"></i></a>
                                    <a class="add_lovelist" href="javascript:void(0);" ><i class="fa fa-heart"></i></a>
                                </div>
                            </div>
                            <div class="tovar_description clearfix">
                                <a class="tovar_title" href="product-page.html" >Cashmere mockneck sweater</a>
                                <span class="tovar_price">?257.00</span>
                            </div>
                        </div>
                    </div><!-- //TOVAR6 -->
                </div><!-- //TOVAR WRAPPER -->
            </div><!-- //ROW -->


            <!-- ROW -->
            <div class="row">

                <!-- BANNER WRAPPER -->
                <div class="banner_wrapper" data-appear-top-offset='-100' data-animated='fadeInUp'>
                    <!-- BANNER -->
                    <div class="col-lg-9 col-md-9">
                        <a class="banner type4 margbot40" href="javascript:void(0);" ><img src="images/tovar/banner4.jpg" alt="" /></a>
                    </div><!-- //BANNER -->

                    <!-- BANNER -->
                    <div class="col-lg-3 col-md-3">
                        <a class="banner nobord margbot40" href="javascript:void(0);" ><img src="images/tovar/banner5.jpg" alt="" /></a>
                    </div><!-- //BANNER -->
                </div><!-- //BANNER WRAPPER -->
            </div><!-- //ROW -->
        </div><!-- //CONTAINER -->
    </section><!-- //TOVAR SECTION -->

    <%} else {%>
    <!-- cargo el wishlist en el counter de wish list para mostrarlo en el counter cada vez que cargan
    el ontent.jsp-->

    <%
        ProductosBLL productosBll = new ProductosBLL();
        Integer cantidadWishItems = productosBll.cantidadWishItems(sesion);
    %>

    <script>
        $("#loveListCounter").text(<%=cantidadWishItems%>);
    </script>

    <!-- BREADCRUMBS -->
    <section class="breadcrumb parallax margbot30"></section>
    <!-- //BREADCRUMBS -->
    <section class="tovar_section">

        <!-- CONTAINER -->
        <div class="container containerFix">
            <h2>Productos Personalizados</h2>

            <!-- ROW -->
            <div class="row">

                <!-- TOVAR WRAPPER -->
                <div class="tovar_wrapper" data-appear-top-offset='-100' data-animated='fadeInUp'>
                    <%
                        List<Productos> listaProductos = (List) request.getSession().getAttribute("listaProductos");

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
                                    <div class="open-project-link"><a class="open-project tovar_view" href="%21projects/women/1.html" >Ver</a></div>
                                    <a class="add_bag" href="Controller?opID=RealizarPedido&referencia=<%=referencia%>" ><i class="fa fa-shopping-cart"></i></a>
                                    <a class="add_lovelist" href="Controller?opID=AddWishList&Referencia=<%=referencia%>" ><i class="fa fa-heart"></i></a>
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
                <div class="col-lg-3 col-md-3 col-xs-6 col-ss-12">
                    <a class="banner type1 margbot30" href="javascript:void(0);" ><img src="images/tovar/banner1.jpg" alt="" /></a>
                    <a class="banner type2 margbot40" href="javascript:void(0);" ><img src="images/tovar/banner2.jpg" alt="" /></a>
                </div><!-- //BANNER -->
            </div>

            <div class="respond_clear_768"></div>
            <%}%>
    </section><!-- //HOME -->





    <!-- NEW ARRIVALS -->

    <section class="new_arrivals padbot50">

        <!-- CONTAINER -->
        <div class="container">
            <h2>Novedades!</h2>

            <!-- JCAROUSEL -->
            <div class="jcarousel-wrapper">

                <!-- NAVIGATION -->
                <div class="jCarousel_pagination">
                    <a href="javascript:void(0);" class="jcarousel-control-prev" ><i class="fa fa-angle-left"></i></a>
                    <a href="javascript:void(0);" class="jcarousel-control-next" ><i class="fa fa-angle-right"></i></a>
                </div><!-- //NAVIGATION -->

                <div class="jcarousel" data-appear-top-offset='-100' data-animated='fadeInUp'>
                    <ul>
                        <li>
                            <!-- TOVAR -->
                            <div class="tovar_item_new">
                                <div class="tovar_img">
                                    <img src="images/tovar/women/new/1.jpg" alt="" />
                                    <div class="open-project-link"><a class="open-project tovar_view" href="%21projects/women/1.html" >Ver</a></div>
                                </div>
                                <div class="tovar_description clearfix">
                                    <a class="tovar_title" href="product-page.html" >Moonglow paisley silk tee</a>
                                    <span class="tovar_price">€98.00</span>
                                </div>
                            </div><!-- //TOVAR -->
                        </li>
                        <li>
                            <!-- TOVAR -->
                            <div class="tovar_item_new">
                                <div class="tovar_img">
                                    <img src="images/tovar/women/new/2.jpg" alt="" />
                                    <div class="open-project-link">
                                        <a class="open-project tovar_view" href="%21projects/women/1.html" >Ver</a>
                                    </div>
                                </div>
                                <div class="tovar_description clearfix">
                                    <a class="tovar_title" href="product-page.html" >PEASANT TOP IN SUCKERED STRIPE</a>
                                    <span class="tovar_price">€78.00</span>
                                </div>
                            </div><!-- //TOVAR -->
                        </li>
                        <li>
                            <!-- TOVAR -->
                            <div class="tovar_item_new">
                                <div class="tovar_img">
                                    <img src="images/tovar/women/new/3.jpg" alt="" />
                                    <div class="open-project-link">
                                        <a class="open-project tovar_view" href="%21projects/women/1.html" >Ver</a>
                                    </div>
                                </div>
                                <div class="tovar_description clearfix">
                                    <a class="tovar_title" href="product-page.html" >EMBROIDERED BIB PEASANT TOP</a>
                                    <span class="tovar_price">€88.00</span>
                                </div>
                            </div><!-- //TOVAR -->
                        </li>
                        <li>
                            <!-- TOVAR -->
                            <div class="tovar_item_new">
                                <div class="tovar_img">
                                    <img src="images/tovar/women/new/4.jpg" alt="" />
                                    <div class="open-project-link">
                                        <a class="open-project tovar_view" href="%21projects/women/1.html" >Ver</a>
                                    </div>
                                </div>
                                <div class="tovar_description clearfix">
                                    <a class="tovar_title" href="product-page.html" >SILK POCKET BLOUSE</a>
                                    <span class="tovar_price">€98.00</span>
                                </div>
                            </div><!-- //TOVAR -->
                        </li>
                        <li>
                            <!-- TOVAR -->
                            <div class="tovar_item_new">
                                <div class="tovar_img">
                                    <img src="images/tovar/women/new/5.jpg" alt="" />
                                    <div class="open-project-link">
                                        <a class="open-project tovar_view" href="%21projects/women/1.html" >Ver</a>
                                    </div>
                                </div>
                                <div class="tovar_description clearfix">
                                    <a class="tovar_title" href="product-page.html" >SWISS-DOT TUXEDO SHIRT</a>
                                    <span class="tovar_price">€65.00</span>
                                </div>
                            </div><!-- //TOVAR -->
                        </li>
                        <li>
                            <!-- TOVAR -->
                            <div class="tovar_item_new">
                                <div class="tovar_img">
                                    <img src="images/tovar/women/new/6.jpg" alt="" />
                                    <div class="open-project-link">
                                        <a class="open-project tovar_view" href="%21projects/women/1.html" >Ver</a>
                                    </div>
                                </div>
                                <div class="tovar_description clearfix">
                                    <a class="tovar_title" href="product-page.html" >STRETCH PERFECT SHIRT</a>
                                    <span class="tovar_price">?72.00</span>
                                </div>
                            </div><!-- //TOVAR -->
                        </li>
                        <li>
                            <!-- TOVAR -->
                            <div class="tovar_item_new">
                                <div class="tovar_img">
                                    <img src="images/tovar/women/new/1.jpg" alt="" />
                                    <div class="open-project-link">
                                        <a class="open-project tovar_view" href="%21projects/women/1.html" >Ver</a>
                                    </div>
                                </div>
                                <div class="tovar_description clearfix">
                                    <a class="tovar_title" href="product-page.html" >Moonglow paisley silk tee</a>
                                    <span class="tovar_price">€98.00</span>
                                </div>
                            </div><!-- //TOVAR -->
                        </li>
                        <li>
                            <!-- TOVAR -->
                            <div class="tovar_item_new">
                                <div class="tovar_img">
                                    <img src="images/tovar/women/new/2.jpg" alt="" />
                                    <div class="open-project-link">
                                        <a class="open-project tovar_view" href="%21projects/women/1.html" >Ver</a>
                                    </div>
                                </div>
                                <div class="tovar_description clearfix">
                                    <a class="tovar_title" href="product-page.html" >PEASANT TOP IN SUCKERED STRIPE</a>
                                    <span class="tovar_price">€78.00</span>
                                </div>
                            </div><!-- //TOVAR -->
                        </li>
                        <li>
                            <!-- TOVAR -->
                            <div class="tovar_item_new">
                                <div class="tovar_img">
                                    <img src="images/tovar/women/new/3.jpg" alt="" />
                                    <div class="open-project-link">
                                        <a class="open-project tovar_view" href="%21projects/women/1.html" >Ver</a>
                                    </div>
                                </div>
                                <div class="tovar_description clearfix">
                                    <a class="tovar_title" href="product-page.html" >EMBROIDERED BIB PEASANT TOP</a>
                                    <span class="tovar_price">€88.00</span>
                                </div>
                            </div><!-- //TOVAR -->
                        </li>
                        <li>
                            <!-- TOVAR -->
                            <div class="tovar_item_new">
                                <div class="tovar_img">
                                    <img src="images/tovar/women/new/4.jpg" alt="" />
                                    <div class="open-project-link">
                                        <a class="open-project tovar_view" href="%21projects/women/1.html" >Ver</a>
                                    </div>
                                </div>
                                <div class="tovar_description clearfix">
                                    <a class="tovar_title" href="product-page.html" >SILK POCKET BLOUSE</a>
                                    <span class="tovar_price">€98.00</span>
                                </div>
                            </div><!-- //TOVAR -->
                        </li>
                    </ul>
                </div>
            </div><!-- //JCAROUSEL -->
        </div><!-- //CONTAINER -->
    </section><!-- //NEW ARRIVALS -->


    <!-- BRANDS -->
    <section class="brands_carousel">

        <!-- CONTAINER -->
        <div class="container">

            <!-- JCAROUSEL -->
            <div class="jcarousel-wrapper">

                <!-- NAVIGATION -->
                <div class="jCarousel_pagination">
                    <a href="javascript:void(0);" class="jcarousel-control-prev" ><i class="fa fa-angle-left"></i></a>
                    <a href="javascript:void(0);" class="jcarousel-control-next" ><i class="fa fa-angle-right"></i></a>
                </div><!-- //NAVIGATION -->

                <div class="jcarousel" data-appear-top-offset='-100' data-animated='fadeInUp'>
                    <ul>
                        <li><a href="javascript:void(0);" ><img src="images/brands/1.jpg" alt="" /></a></li>
                        <li><a href="javascript:void(0);" ><img src="images/brands/2.jpg" alt="" /></a></li>
                        <li><a href="javascript:void(0);" ><img src="images/brands/3.jpg" alt="" /></a></li>
                        <li><a href="javascript:void(0);" ><img src="images/brands/4.jpg" alt="" /></a></li>
                        <li><a href="javascript:void(0);" ><img src="images/brands/5.jpg" alt="" /></a></li>
                        <li><a href="javascript:void(0);" ><img src="images/brands/6.jpg" alt="" /></a></li>
                        <li><a href="javascript:void(0);" ><img src="images/brands/7.jpg" alt="" /></a></li>
                        <li><a href="javascript:void(0);" ><img src="images/brands/8.jpg" alt="" /></a></li>
                        <li><a href="javascript:void(0);" ><img src="images/brands/9.jpg" alt="" /></a></li>
                        <li><a href="javascript:void(0);" ><img src="images/brands/10.jpg" alt="" /></a></li>
                        <li><a href="javascript:void(0);" ><img src="images/brands/11.jpg" alt="" /></a></li>
                        <li><a href="javascript:void(0);" ><img src="images/brands/12.jpg" alt="" /></a></li>
                    </ul>
                </div>
            </div><!-- //JCAROUSEL -->
        </div><!-- //CONTAINER -->
    </section><!-- //BRANDS -->


    <hr class="container">


    <!-- RECENT POSTS -->
    <section class="recent_posts padbot40">

        <!-- CONTAINER -->
        <div class="container">
            <h2>Nuevas Entradas del Blog</h2>

            <!-- ROW -->
            <div class="row" data-appear-top-offset='-100' data-animated='fadeInUp'>
                <div class="col-lg-6 col-md-6 padbot30">
                    <div class="recent_post_item clearfix">
                        <div class="recent_post_date">15<span>oct</span></div>
                        <a class="recent_post_img" href="blog-post.html" ><img src="images/blog/recent1.jpg" alt="" /></a>
                        <a class="recent_post_title" href="blog-post.html" >Lorem Ipsum dolor sit amet.</a>
                        <div class="recent_post_content">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.</div>
                        <ul class="post_meta">
                            <li><i class="fa fa-comments"></i>Comentarios <span class="sep">|</span> 15</li>
                        </ul>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 padbot30">
                    <div class="recent_post_item clearfix">
                        <div class="recent_post_date">07<span>dec</span></div>
                        <a class="recent_post_img" href="blog-post.html" ><img src="images/blog/recent2.jpg" alt="" /></a>
                        <a class="recent_post_title" href="blog-post.html" >Lorem Ipsum dolor sit amet.</a>
                        <div class="recent_post_content">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.</div</div>
                    <ul class="post_meta">
                        <li><i class="fa fa-comments"></i>Comentarios <span class="sep">|</span> 15</li>
                    </ul>
                </div>
            </div>
        </div><!-- //ROW -->
        </div><!-- //CONTAINER -->
    </section><!-- //RECENT POSTS -->
