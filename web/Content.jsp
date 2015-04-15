<%@page import="org.mig.java.Entities.Usuarios"%>
<!-- HOME -->
<section id="home" class="padbot0">

    <!-- TOP SLIDER -->
    <%
        Usuarios sesion = (Usuarios) request.getSession().getAttribute("clienteSesion");
        if (sesion == null) {
    %>    
    <div class="flexslider top_slider">
        <ul class="slides">
            <li class="slide1">

                <!-- CONTAINER -->
                <div class="container">
                    <div class="flex_caption1">
                        <p class="title1 captionDelay2 FromTop">mega sell</p>
                        <p class="title2 captionDelay3 FromTop">last week of sales</p>
                    </div>
                    <a class="flex_caption2" href="javascript:void(0);" ><div class="middle">sale<span>shop</span>now</div></a>
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
                        <p class="title1 captionDelay2 FromTop">mega sell</p>
                        <p class="title2 captionDelay3 FromTop">last week of sales</p>
                    </div>
                    <a class="flex_caption2" href="javascript:void(0);" ><div class="middle">sale<span>shop</span>now</div></a>
                    <div class="flex_caption3 slide_banner_wrapper">
                        <a class="slide_banner slide1_banner1 captionDelay4 FromBottom" href="javascript:void(0);" ><img src="images/slider/slide1_baner1.jpg" alt="" /></a>
                        <a class="slide_banner slide1_banner3 captionDelay5 FromBottom" href="javascript:void(0);" ><img src="images/slider/slide1_baner3.jpg" alt="" /></a>
                        <a class="slide_banner slide1_banner2 captionDelay6 FromBottom" href="javascript:void(0);" ><img src="images/slider/slide1_baner2.jpg" alt="" /></a>
                    </div>
                </div><!-- //CONTAINER -->
            </li>

            <li class="slide3">

                <!-- CONTAINER -->
                <div class="container">
                    <div class="flex_caption1">
                        <p class="title1 captionDelay2 FromTop">mega sell</p>
                        <p class="title2 captionDelay3 FromTop">last week of sales</p>
                    </div>
                    <a class="flex_caption2" href="javascript:void(0);" ><div class="middle">sale<span>shop</span>now</div></a>
                    <div class="flex_caption3 slide_banner_wrapper">
                        <a class="slide_banner slide1_banner3 captionDelay4 FromBottom" href="javascript:void(0);" ><img src="images/slider/slide1_baner3.jpg" alt="" /></a>
                        <a class="slide_banner slide1_banner1 captionDelay5 FromBottom" href="javascript:void(0);" ><img src="images/slider/slide1_baner1.jpg" alt="" /></a>
                        <a class="slide_banner slide1_banner2 captionDelay6 FromBottom" href="javascript:void(0);" ><img src="images/slider/slide1_baner2.jpg" alt="" /></a>
                    </div>
                </div><!-- //CONTAINER -->
            </li>
        </ul>
    </div><!-- //TOP SLIDER -->


    <%} else {%>
    <style>
        .container{
            marging-top:50px;
        }
    </style>
    <%}%>
</section><!-- //HOME -->


<!-- TOVAR SECTION -->
<section class="tovar_section">

    <!-- CONTAINER -->
    <div class="container containerFix">
        <h2>Featured products</h2>

        <!-- ROW -->
        <div class="row">

            <!-- TOVAR WRAPPER -->
            <div class="tovar_wrapper" data-appear-top-offset='-100' data-animated='fadeInUp'>

                <!-- TOVAR1 -->
                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6 col-ss-12 padbot40">
                    <div class="tovar_item">
                        <div class="tovar_img">
                            <div class="tovar_img_wrapper">
                                <img class="img" src="images/tovar/women/1.jpg" alt="" />
                                <img class="img_h" src="images/tovar/women/1_2.jpg" alt="" />
                            </div>
                            <div class="tovar_item_btns">
                                <div class="open-project-link"><a class="open-project tovar_view" href="%21projects/women/1.html" >quick view</a></div>
                                <a class="add_bag" href="javascript:void(0);" ><i class="fa fa-shopping-cart"></i></a>
                                <a class="add_lovelist" href="javascript:void(0);" ><i class="fa fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="tovar_description clearfix">
                            <a class="tovar_title" href="product-page.html" >Popover Sweatshirt in Floral Jacquard</a>
                            <span class="tovar_price">$98.00</span>
                        </div>
                    </div>
                </div><!-- //TOVAR1 -->

                <!-- TOVAR2 -->
                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6 col-ss-12 padbot40">
                    <div class="tovar_item">
                        <div class="tovar_img">
                            <div class="tovar_img_wrapper">
                                <img class="img" src="images/tovar/women/2.jpg" alt="" />
                                <img class="img_h" src="images/tovar/women/2_2.jpg" alt="" />
                            </div>
                            <div class="tovar_item_btns">
                                <div class="open-project-link"><a class="open-project tovar_view" href="%21projects/women/2.html" >quick view</a></div>
                                <a class="add_bag" href="javascript:void(0);" ><i class="fa fa-shopping-cart"></i></a>
                                <a class="add_lovelist" href="javascript:void(0);" ><i class="fa fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="tovar_description clearfix">
                            <a class="tovar_title" href="product-page.html" >Marled drop-shoulder sweater</a>
                            <span class="tovar_price">$118.00</span>
                        </div>
                    </div>
                </div><!-- //TOVAR2 -->

                <!-- TOVAR3 -->
                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6 col-ss-12 padbot40">
                    <div class="tovar_item">
                        <div class="tovar_img">
                            <div class="tovar_img_wrapper">
                                <img class="img" src="images/tovar/women/3.jpg" alt="" />
                                <img class="img_h" src="images/tovar/women/3_2.jpg" alt="" />
                            </div>
                            <div class="tovar_item_btns">
                                <div class="open-project-link"><a class="open-project tovar_view" href="%21projects/women/3.html" >quick view</a></div>
                                <a class="add_bag" href="javascript:void(0);" ><i class="fa fa-shopping-cart"></i></a>
                                <a class="add_lovelist" href="javascript:void(0);" ><i class="fa fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="tovar_description clearfix">
                            <a class="tovar_title" href="product-page.html" >Japanese indigo denim jacket</a>
                            <span class="tovar_price">$158.00</span>
                        </div>
                    </div>
                </div><!-- //TOVAR3 -->

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
                                <div class="open-project-link"><a class="open-project tovar_view" href="%21projects/women/4.html" >quick view</a></div>
                                <a class="add_bag" href="javascript:void(0);" ><i class="fa fa-shopping-cart"></i></a>
                                <a class="add_lovelist" href="javascript:void(0);" ><i class="fa fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="tovar_description clearfix">
                            <a class="tovar_title" href="product-page.html" >Peacoat trench</a>
                            <span class="tovar_price">$298.00</span>
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
                                <div class="open-project-link"><a class="open-project tovar_view" href="%21projects/women/5.html" >quick view</a></div>
                                <a class="add_bag" href="javascript:void(0);" ><i class="fa fa-shopping-cart"></i></a>
                                <a class="add_lovelist" href="javascript:void(0);" ><i class="fa fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="tovar_description clearfix">
                            <a class="tovar_title" href="product-page.html" >Schoolboy blazer in italian wool</a>
                            <span class="tovar_price">$194.00</span>
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
                                <div class="open-project-link"><a class="open-project tovar_view" href="%21projects/women/6.html" >quick view</a></div>
                                <a class="add_bag" href="javascript:void(0);" ><i class="fa fa-shopping-cart"></i></a>
                                <a class="add_lovelist" href="javascript:void(0);" ><i class="fa fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="tovar_description clearfix">
                            <a class="tovar_title" href="product-page.html" >Cashmere mockneck sweater</a>
                            <span class="tovar_price">$257.00</span>
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


<!-- NEW ARRIVALS -->
<section class="new_arrivals padbot50">

    <!-- CONTAINER -->
    <div class="container">
        <h2>new arrivals</h2>

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
                                <div class="open-project-link"><a class="open-project tovar_view" href="%21projects/women/1.html" >quick view</a></div>
                            </div>
                            <div class="tovar_description clearfix">
                                <a class="tovar_title" href="product-page.html" >Moonglow paisley silk tee</a>
                                <span class="tovar_price">$98.00</span>
                            </div>
                        </div><!-- //TOVAR -->
                    </li>
                    <li>
                        <!-- TOVAR -->
                        <div class="tovar_item_new">
                            <div class="tovar_img">
                                <img src="images/tovar/women/new/2.jpg" alt="" />
                                <div class="open-project-link">
                                    <a class="open-project tovar_view" href="%21projects/women/1.html" >quick view</a>
                                </div>
                            </div>
                            <div class="tovar_description clearfix">
                                <a class="tovar_title" href="product-page.html" >PEASANT TOP IN SUCKERED STRIPE</a>
                                <span class="tovar_price">$78.00</span>
                            </div>
                        </div><!-- //TOVAR -->
                    </li>
                    <li>
                        <!-- TOVAR -->
                        <div class="tovar_item_new">
                            <div class="tovar_img">
                                <img src="images/tovar/women/new/3.jpg" alt="" />
                                <div class="open-project-link">
                                    <a class="open-project tovar_view" href="%21projects/women/1.html" >quick view</a>
                                </div>
                            </div>
                            <div class="tovar_description clearfix">
                                <a class="tovar_title" href="product-page.html" >EMBROIDERED BIB PEASANT TOP</a>
                                <span class="tovar_price">$88.00</span>
                            </div>
                        </div><!-- //TOVAR -->
                    </li>
                    <li>
                        <!-- TOVAR -->
                        <div class="tovar_item_new">
                            <div class="tovar_img">
                                <img src="images/tovar/women/new/4.jpg" alt="" />
                                <div class="open-project-link">
                                    <a class="open-project tovar_view" href="%21projects/women/1.html" >quick view</a>
                                </div>
                            </div>
                            <div class="tovar_description clearfix">
                                <a class="tovar_title" href="product-page.html" >SILK POCKET BLOUSE</a>
                                <span class="tovar_price">$98.00</span>
                            </div>
                        </div><!-- //TOVAR -->
                    </li>
                    <li>
                        <!-- TOVAR -->
                        <div class="tovar_item_new">
                            <div class="tovar_img">
                                <img src="images/tovar/women/new/5.jpg" alt="" />
                                <div class="open-project-link">
                                    <a class="open-project tovar_view" href="%21projects/women/1.html" >quick view</a>
                                </div>
                            </div>
                            <div class="tovar_description clearfix">
                                <a class="tovar_title" href="product-page.html" >SWISS-DOT TUXEDO SHIRT</a>
                                <span class="tovar_price">$65.00</span>
                            </div>
                        </div><!-- //TOVAR -->
                    </li>
                    <li>
                        <!-- TOVAR -->
                        <div class="tovar_item_new">
                            <div class="tovar_img">
                                <img src="images/tovar/women/new/6.jpg" alt="" />
                                <div class="open-project-link">
                                    <a class="open-project tovar_view" href="%21projects/women/1.html" >quick view</a>
                                </div>
                            </div>
                            <div class="tovar_description clearfix">
                                <a class="tovar_title" href="product-page.html" >STRETCH PERFECT SHIRT</a>
                                <span class="tovar_price">$72.00</span>
                            </div>
                        </div><!-- //TOVAR -->
                    </li>
                    <li>
                        <!-- TOVAR -->
                        <div class="tovar_item_new">
                            <div class="tovar_img">
                                <img src="images/tovar/women/new/1.jpg" alt="" />
                                <div class="open-project-link">
                                    <a class="open-project tovar_view" href="%21projects/women/1.html" >quick view</a>
                                </div>
                            </div>
                            <div class="tovar_description clearfix">
                                <a class="tovar_title" href="product-page.html" >Moonglow paisley silk tee</a>
                                <span class="tovar_price">$98.00</span>
                            </div>
                        </div><!-- //TOVAR -->
                    </li>
                    <li>
                        <!-- TOVAR -->
                        <div class="tovar_item_new">
                            <div class="tovar_img">
                                <img src="images/tovar/women/new/2.jpg" alt="" />
                                <div class="open-project-link">
                                    <a class="open-project tovar_view" href="%21projects/women/1.html" >quick view</a>
                                </div>
                            </div>
                            <div class="tovar_description clearfix">
                                <a class="tovar_title" href="product-page.html" >PEASANT TOP IN SUCKERED STRIPE</a>
                                <span class="tovar_price">$78.00</span>
                            </div>
                        </div><!-- //TOVAR -->
                    </li>
                    <li>
                        <!-- TOVAR -->
                        <div class="tovar_item_new">
                            <div class="tovar_img">
                                <img src="images/tovar/women/new/3.jpg" alt="" />
                                <div class="open-project-link">
                                    <a class="open-project tovar_view" href="%21projects/women/1.html" >quick view</a>
                                </div>
                            </div>
                            <div class="tovar_description clearfix">
                                <a class="tovar_title" href="product-page.html" >EMBROIDERED BIB PEASANT TOP</a>
                                <span class="tovar_price">$88.00</span>
                            </div>
                        </div><!-- //TOVAR -->
                    </li>
                    <li>
                        <!-- TOVAR -->
                        <div class="tovar_item_new">
                            <div class="tovar_img">
                                <img src="images/tovar/women/new/4.jpg" alt="" />
                                <div class="open-project-link">
                                    <a class="open-project tovar_view" href="%21projects/women/1.html" >quick view</a>
                                </div>
                            </div>
                            <div class="tovar_description clearfix">
                                <a class="tovar_title" href="product-page.html" >SILK POCKET BLOUSE</a>
                                <span class="tovar_price">$98.00</span>
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


<!-- SERVICES SECTION -->
<section class="services_section">

    <!-- CONTAINER -->
    <div class="container">

        <!-- ROW -->
        <div class="row">
            <div class="col-lg-6 col-md-6 padbot60 services_section_description" data-appear-top-offset='-100' data-animated='fadeInLeft'>
                <p>We empower WordPress developers with design-driven themes and a classy experience their clients will just love</p>
                <span>Gluten-free quinoa selfies carles, kogi gentrify retro marfa viral. Odd future photo booth flannel ethnic pug, occupy keffiyeh synth blue bottle tofu tonx iphone. Blue bottle 90?s vice trust fund gastropub gentrify retro marfa viral</span>
            </div>

            <div class="col-lg-6 col-md-6 padbot30" data-appear-top-offset='-100' data-animated='fadeInRight'>

                <!-- ROW -->
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-3 col-xs-6 col-ss-12 padbot30">
                        <div class="service_item">
                            <div class="clearfix"><i class="fa fa-tablet"></i><p>Responsive Theme</p></div>
                            <span>Thundercats squid single-origin coffee YOLO selfies disrupt, master cleanse semiotics letterpress typewriter.</span>
                        </div>
                    </div>

                    <div class="col-lg-6 col-md-6 col-sm-3 col-xs-6 col-ss-12 padbot30">
                        <div class="service_item">
                            <div class="clearfix"><i class="fa fa-comments-o"></i><p>Free Support</p></div>
                            <span>Thundercats squid single-origin coffee YOLO selfies disrupt, master cleanse semiotics letterpress typewriter.</span>
                        </div>
                    </div>

                    <div class="col-lg-6 col-md-6 col-sm-3 col-xs-6 col-ss-12 padbot30">
                        <div class="service_item">
                            <div class="clearfix"><i class="fa fa-eye"></i><p>Retina Ready</p></div>
                            <span>Thundercats squid single-origin coffee YOLO selfies disrupt, master cleanse semiotics letterpress typewriter.</span>
                        </div>
                    </div>

                    <div class="col-lg-6 col-md-6 col-sm-3 col-xs-6 col-ss-12 padbot30">
                        <div class="service_item">
                            <div class="clearfix"><i class="fa fa-cogs"></i><p>Easy Customize</p></div>
                            <span>Thundercats squid single-origin coffee YOLO selfies disrupt, master cleanse semiotics letterpress typewriter.</span>
                        </div>
                    </div>
                </div><!-- //ROW -->
            </div>
        </div><!-- //ROW -->
    </div><!-- //CONTAINER -->
</section><!-- //SERVICES SECTION -->


<hr class="container">


<!-- RECENT POSTS -->
<section class="recent_posts padbot40">

    <!-- CONTAINER -->
    <div class="container">
        <h2>New blog posts</h2>

        <!-- ROW -->
        <div class="row" data-appear-top-offset='-100' data-animated='fadeInUp'>
            <div class="col-lg-6 col-md-6 padbot30">
                <div class="recent_post_item clearfix">
                    <div class="recent_post_date">15<span>oct</span></div>
                    <a class="recent_post_img" href="blog-post.html" ><img src="images/blog/recent1.jpg" alt="" /></a>
                    <a class="recent_post_title" href="blog-post.html" >Be Unafraid, Self-Hosted WordPress Is WAY Easier Nowadays</a>
                    <div class="recent_post_content">The beauty of self-hosted WordPress, is that you can build your site however you like, want to add forums to your website? Done. Want to add a ecommerce to your blog? Done.</div>
                    <ul class="post_meta">
                        <li><i class="fa fa-comments"></i>Commetcs <span class="sep">|</span> 15</li>
                    </ul>
                </div>
            </div>

            <div class="col-lg-6 col-md-6 padbot30">
                <div class="recent_post_item clearfix">
                    <div class="recent_post_date">07<span>dec</span></div>
                    <a class="recent_post_img" href="blog-post.html" ><img src="images/blog/recent2.jpg" alt="" /></a>
                    <a class="recent_post_title" href="blog-post.html" >True Story: I Went Two Weeks Without Social Media</a>
                    <div class="recent_post_content">Since I began blogging 5.5 years ago, social media (and my blog) have taken hold on my life. I?ve been an early adopter for most major networks and use them extensively.  This past year I?ve been overwhelmed.</div>
                    <ul class="post_meta">
                        <li><i class="fa fa-comments"></i>Commetcs <span class="sep">|</span> 15</li>
                    </ul>
                </div>
            </div>
        </div><!-- //ROW -->
    </div><!-- //CONTAINER -->
</section><!-- //RECENT POSTS -->