<%-- 
     Document   : index
     Created on : 29-mar-2015, 21:12:56
     Author     : miguelangel
--%>

<%@page import="org.mig.java.Entities.Usuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>All That I Want</title>
        <!-- CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="css/flexslider.css" rel="stylesheet" type="text/css" />
        <link href="css/fancySelect.css" rel="stylesheet" media="screen, projection" />
        <link href="css/animate.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <!-- FONTS -->
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
        <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
        <script src="js/LoginUserGson.js"></script>
    </head>
    <body>


        <!-- PRELOADER -->
        <div id="preloader"><img src="images/loading.gif" alt="" /></div>
        <!-- //PRELOADER -->
        <div class="preloader_hide">
            <!-- Small modal -->

            <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content">
                        <form class="form-signin" method="POST" action="Controller?opID=Login">
                            <h2 id="formTittle" class="form-signin-heading">Iniciar Sesión </h2>
                            <label for="inputEmail" class="sr-only">Email address</label>
                            <input name="mail" type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
                            <label for="inputPassword" class="sr-only">Password</label>
                            <input name="password" type="password" id="inputPassword" class="form-control" placeholder="Password" required>
                            <div id="formRemember" class="checkbox">
                                <label>
                                    <input  type="checkbox" value="remember-me"> Recuerdame  
                                </label>
                            </div>
                            <button class="btn btn-lg btn-primary btn-block" id="formButton" type="submit">Iniciar</button>
                            <span class="help-block-Login"></span>  
                        </form>
                    </div>
                </div>
            </div>
            <!-- PAGE -->
            <div id="page">

                <!-- HEADER -->
                <header>
                    <!-- TOP INFO -->
                    <div class="top_info">   <!-- CONTAINER -->
                        <div class="container clearfix">
                            <ul class="secondary_menu">
                                <%
                                    Usuarios sesion = (Usuarios) request.getSession().getAttribute("clienteSesion");

                                    if (sesion == null) {
                                %>
                                <li><a data-toggle="modal" data-target=".bs-example-modal-sm" >Login</a></li>
                                <li><a href="my-account.html" >Registro</a></li>
                                    <%} else {
                                        String userName = sesion.getNombre();


                                    %>
                                <li><a href="my-account.html" ><%=userName%></a></li>
                                <li><a href="Controller?opID=LogOut">Salir</li>

                                <%}%>

                            </ul>


                        </div><!-- //CONTAINER -->
                    </div><!-- TOP INFO -->




                    <!-- MENU BLOCK -->
                    <div class="menu_block">

                        <!-- CONTAINER -->
                        <div class="container clearfix">

                            <!-- LOGO -->
                            <div class="logo">
                                <a href="index.html" ><img src="images/logo.png" alt="" /></a>
                            </div><!-- //LOGO -->


                            <!-- SEARCH FORM -->
                            <div class="top_search_form">
                                <a class="top_search_btn" href="javascript:void(0);" ><i class="fa fa-search"></i></a>
                                <form method="get" action="#">
                                    <input type="text" name="search" value="Search" onFocus="if (this.value == 'Search')
                                            this.value = '';" onBlur="if (this.value == '')
                                                        this.value = 'Search';" />
                                </form>
                            </div><!-- SEARCH FORM -->


                            <!-- SHOPPING BAG -->
                            <div class="shopping_bag">
                                <a class="shopping_bag_btn" href="javascript:void(0);" ><i class="fa fa-shopping-cart"></i><p>shopping bag</p><span>2</span></a>
                                <div class="cart">
                                    <ul class="cart-items">
                                        <li class="clearfix">
                                            <img class="cart_item_product" src="images/tovar/women/1.jpg" alt="" />
                                            <a href="product-page.html" class="cart_item_title">popover sweatshirt in floral jacquard</a>
                                            <span class="cart_item_price">1 × $98.00</span>
                                        </li>
                                        <li class="clearfix">
                                            <img class="cart_item_product" src="images/tovar/women/3.jpg" alt="" />
                                            <a href="product-page.html" class="cart_item_title">japanese indigo denim jacket</a>
                                            <span class="cart_item_price">2 × $158.00</span>
                                        </li>
                                    </ul>
                                    <div class="cart_total">
                                        <div class="clearfix"><span class="cart_subtotal">bag subtotal: <b>$414</b></span></div>
                                        <a class="btn active" href="checkout.html">Checkout</a>
                                    </div>
                                </div>
                            </div><!-- //SHOPPING BAG -->


                            <!-- LOVE LIST -->
                            <div class="love_list">
                                <%

                                    Integer cantidadWishItems = (Integer) request.getSession().getAttribute("cantidadWishItems");
                                    if (sesion != null) {
                                %>
                                <a class="love_list_btn" href="Controller?opID=WishList" ><i class="fa fa-heart-o"></i><p>Love list</p><span><%=cantidadWishItems%></span></a>
                                        <%}%>
                            </div><!-- //LOVE LIST -->


                            <!-- MENU -->
                            <ul class="navmenu center">
                                <li class="sub-menu first active"><a href="javascript:void(0);" >Home</a>
                                    <!-- MEGA MENU -->
                                    <ul class="mega_menu megamenu_col1 clearfix">
                                        <li class="col">
                                            <ol>
                                                <li class="active"><a href="index.html" >Home slider</a></li>
                                                <li><a href="index2.html" >Home men promo</a></li>
                                                <li><a href="index3.html" >Home kids</a></li>
                                            </ol>
                                        </li>
                                    </ul><!-- //MEGA MENU -->
                                </li>

                                <li class="sub-menu"><a href="javascript:void(0);" >Pages</a>
                                    <!-- MEGA MENU -->
                                    <ul class="mega_menu megamenu_col3 clearfix">
                                        <li class="col">
                                            <ol>
                                                <li><a href="about.html" >About Us</a></li>
                                                <li><a href="product-page.html" >Product Page</a></li>
                                                <li><a href="love-list.html" >Love List</a></li>
                                                <li><a href="shopping-bag.html" >Shopping Bag</a></li>
                                                <li><a href="my-account.html" >My Account</a></li>

                                            </ol>
                                        </li>
                                        <li class="col">
                                            <ol>
                                                <li><a href="product-catalog.html" >Product Catalog</a></li>
                                                <li><a href="brands-list.html" >Brands List</a></li>
                                                <li><a href="update.html" >Site Update</a></li>
                                                <li><a href="contacts.html" >Contacts</a></li>
                                                <li><a href="shortcodes.html" >Shortcodes</a></li>
                                            </ol>
                                        </li>
                                        <li class="col">
                                            <ol>
                                                <li><a href="404.html" >404 Page</a></li>
                                                <li><a href="articles.html" >Articles</a></li>
                                                <li><a href="article-single.html" >Article Single</a></li>
                                                <li><a href="checkout.html" >Checkout</a></li>
                                                <li><a href="faq.html" >FAQ</a></li>
                                            </ol>
                                        </li>
                                    </ul><!-- //MEGA MENU -->
                                </li>
                                <li class="sub-menu"><a href="javascript:void(0);" >Blog</a>
                                    <!-- MEGA MENU -->
                                    <ul class="mega_menu megamenu_col1 clearfix">
                                        <li class="col">
                                            <ol>
                                                <li><a href="blog.html" >Blog</a></li>
                                                <li><a href="blog-post.html" >Blog Post</a></li>
                                            </ol>
                                        </li>
                                    </ul><!-- //MEGA MENU -->
                                </li>
                                <li class="last sale_menu"><a href="sale.html" >Sale</a></li>
                            </ul><!-- //MENU -->
                        </div><!-- //MENU BLOCK -->
                    </div><!-- //CONTAINER -->
                </header><!-- //HEADER -->














                <%String pagina = (String) request.getSession().getAttribute("pagina");

                    if (pagina != null) {%>
                <jsp:include page="<%=pagina%>"></jsp:include>
                <%} else {%><jsp:include page="Content.jsp"></jsp:include>
                <%}%>











                <!-- SCRIPTS -->
                <!--[if IE]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
                <!--[if IE]><html class="ie" lang="en"> <![endif]-->

                <script src="js/jquery.min.js" type="text/javascript"></script>
                <script src="js/bootstrap.min.js" type="text/javascript"></script>
                <script src="js/superfish.min.js" type="text/javascript"></script>
                <script src="js/jquery.sticky.js" type="text/javascript"></script>
                <script src="js/parallax.js" type="text/javascript"></script>
                <script src="js/jquery.flexslider-min.js" type="text/javascript"></script>
                <script src="js/jquery.jcarousel.js" type="text/javascript"></script>
                <script src="js/fancySelect.js"></script>
                <script src="js/animate.js" type="text/javascript"></script>
                <script src="js/myscript.js" type="text/javascript"></script>
                <script>
                                                    if (top != self)
                                                        top.location.replace(self.location.href);
                </script>
                </body>
                </html>
