<%@page import="org.mig.java.Entities.Usuarios"%>
<!-- TOP INFO -->
<div class="top_info">   <!-- CONTAINER -->
    <div class="container clearfix">
        <ul class="secondary_menu">
            <%
                Usuarios sesion = (Usuarios) request.getSession().getAttribute("clienteSesion");

                if (sesion == null) {
            %>

            <li><a data-toggle="modal" data-target=".bs-example-modal-sm" >Login</a></li>
            <li><a href="Controller?opID=RedirectRegister" >Registro</a></li>
                <%} else {
                    String userName = sesion.getNombre();
                %>
            <li><a href="Controller?opID=RedirectRegister" ><%=userName%></a></li>
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
            <a href="Controller?opID=RedirectContent" ><h1 style="width: 220px;">All That I Want</h1></a>
        </div><!-- //LOGO -->


        <!-- SEARCH FORM -->
        <div class="top_search_form">
            <a class="top_search_btn" href="javascript:void(0);" ><i class="fa fa-search"></i></a>
            <form method="get" action="#">
                <input type="text" name="search" value="Search" onFocus="if (this.value === 'Search')
                            this.value = '';" onBlur="if (this.value === '')
                                        this.value = 'Search';" />
            </form>
        </div><!-- SEARCH FORM -->
        <!-- SHOPPING BAG -->
        <div class="shopping_bag">
            <a class="shopping_bag_btn" href="javascript:void(0);" ><i class="fa fa-shopping-cart"></i><p>Carrito</p><span>2</span></a>
            <div class="cart">
                <ul class="cart-items">
                    <li class="clearfix">
                        <img class="cart_item_product" src="images/tovar/women/1.jpg" alt="" />
                        <a href="product-page.html" class="cart_item_title">popover sweatshirt in floral jacquard</a>
                        <span class="cart_item_price">1 × $98.00</span>
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
            <a class="love_list_btn" href="Controller?opID=WishList" ><i class="fa fa-heart-o"></i><p>Love list</p><span id="loveListCounter"><%=cantidadWishItems%></span></a>
                    <%}%>
        </div><!-- //LOVE LIST -->


        <!-- MENU -->
        <ul class="navmenu center">
            <li class="sub-menu first active"><a href="javascript:void(0);" >Inicio</a>

            </li>

            <li class="sub-menu"><a href="javascript:void(0);" >Pages</a>
                <!-- MEGA MENU -->
                <ul class="mega_menu megamenu_col3 clearfix">
                    <li class="col">
                        <ol>
                            <li><a href="about.html" >Pagina</a></li>
                            <li><a href="product-page.html" >Pagina</a></li>
                            <li><a href="love-list.html" >Pagina</a></li>
                            <li><a href="shopping-bag.html" >Pagina</a></li>
                            <li><a href="my-account.html" >Pagina</a></li>

                        </ol>
                    </li>

                </ul><!-- //MEGA MENU -->
            </li>
            <li class="sub-menu"><a href="javascript:void(0);" >Blog</a>
            </li>
            <li class="last sale_menu"><a href="sale.html" >Personal Shopper</a></li>
        </ul><!-- //MENU -->
    </div><!-- //MENU BLOCK -->
</div><!-- //CONTAINER -->