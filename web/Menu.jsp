<%@page import="org.mig.java.Entities.Imagenes_productos"%>
<%@page import="org.mig.java.Entities.Categoria"%>
<%@page contentType="text/html;charset=UTF-8"%>
<%@page import="org.mig.java.Entities.Productos"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.mig.java.Entities.Pedidos"%>
<%@page import="java.util.List"%>
<%@page import="org.mig.java.Entities.Usuarios"%>
<!-- TOP INFO -->
<div class="top_info">   
    <!-- CONTAINER -->
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
            <li><a href="Controller?opID=UserPanel" ><%=userName%></a></li>
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
            <a href="Controller?opID=RedirectContent" ><img src="images/logo negro nombre completo transp.jpg"/></a>
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

        <%
            if (sesion != null) {
                Productos producto = new Productos();
                List<Pedidos> pedidos = (ArrayList<Pedidos>) request.getSession().getAttribute("itemsCarrito");
                List<Productos> productosCarrito = (ArrayList< Productos>) request.getSession().getAttribute("productosCarrito");
                int numeroItemsCarrito = pedidos.size();
                int sumaCarritoTotal = 0;
        %>

        <div class="shopping_bag">
            <a class="shopping_bag_btn" href="javascript:void(0);" ><i class="fa fa-shopping-cart"></i><p>Carrito</p><span><%=numeroItemsCarrito%></span></a>
            <div class="cart">
                <a href="Controller?opID=RedirectShoppingBag">Ver Carrito</a>
                <ul class="cart-items">
                    <%
                        for (int i = 0; i < productosCarrito.size(); i++) {
                            producto = productosCarrito.get(i);
                            int precioProducto = producto.getPrecio();
                            String productoNombre = producto.getNombre();
                            String referencia = producto.getReferencia();

                    %>
                    <li class="clearfix">
                        <%               String urlImagen;
                            List<Imagenes_productos> listadoImagenesProductos = (List) request.getAttribute("listadoImagenesProductos");
                            for (int x = 0; x < listadoImagenesProductos.size(); x++) {
                                Imagenes_productos imagenes = listadoImagenesProductos.get(x);
                                String imagenProReferencia = imagenes.getProdReferencia();

                                if (imagenProReferencia.equals(referencia)) {
                                    urlImagen = listadoImagenesProductos.get(x).getUrl();
                        %>  <img class="cart_item_product" src=<%=urlImagen%> alt="" />
                        <%
                                }
                            }

                        %>

                        <a href="Controller?opID=MostrarProducto&Referencia=<%=referencia%>" class="cart_item_title"><%=productoNombre%></a>
                        <span class="cart_item_price">1 × <%=precioProducto%></span>
                    </li> 

                    <%

                            sumaCarritoTotal = sumaCarritoTotal + precioProducto;
                        }%>
                </ul>
                <div class="cart_total">
                    
                    <div class="clearfix"><span class="cart_subtotal">Sub Total: <b>€<%=sumaCarritoTotal%></b></span></div>
                    <a class="btn active" href="Controller?opID=ConfirmarPedido">Comprar</a>
                </div>
            </div>
        </div><!-- //SHOPPING BAG -->

        <%  }%>
        <!-- LOVE LIST -->
        <div class="love_list">
            <%                Integer cantidadWishItems = (Integer) request.getSession().getAttribute("cantidadWishItems");
                if (sesion != null) {
            %>
            <a class="love_list_btn" href="Controller?opID=WishList" ><i class="fa fa-heart-o"></i><p>Love list</p><span id="loveListCounter"><%=cantidadWishItems%></span></a>
                    <%}%>
        </div><!-- //LOVE LIST -->



        <!-- MENU -->
        <ul class="navmenu center">
            <li class="sub-menu first active"><a href="Controller?opID=RedirectContent" >Inicio</a>

            </li>

            <li class="sub-menu"><a href="Controller?opID=Catalogo" >Catalogo</a>
                <%

                    if (sesion != null) {
                        Usuarios usuario = sesion;
                        String perfil = usuario.getPerfil();
                        //P = propietario
                        if (perfil.equals("P")) {%>
            <li class="sub-menu"><a href="Controller?opID=RedirectShopAdmin">Administracion Tienda</a></li>

            <%}
                }%>





            </li>
            <li class="sub-menu"><a href="Controller?opID=Blog" >Blog</a>
            </li>
            <li class="last sale_menu"><a href="Controller?opID=PersonalShopper" >Personal Shopper</a></li>
        </ul><!-- //MENU -->
    </div><!-- //MENU BLOCK -->
</div><!-- //CONTAINER -->