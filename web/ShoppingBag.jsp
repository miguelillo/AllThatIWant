<%-- 
    Document   : ShoppingBag
    Created on : 20-may-2015, 21:43:12
    Author     : miguelangel
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.mig.java.Entities.Pedidos"%>
<%@page import="org.mig.java.Entities.Productos"%>
<%@page import="java.util.List"%>
<%@page import="org.mig.java.Entities.Productos"%>
<%@page contentType="text/html;charset=UTF-8"%>

<!-- BREADCRUMBS -->
<section class="breadcrumb parallax margbot30"></section>
<!-- //BREADCRUMBS -->


<!-- PAGE HEADER -->
<section class="page_header">

    <!-- CONTAINER -->
    <div class="container">
        <h3 class="pull-left"><b>Cesta de la compra</b></h3>

        <div class="pull-right">
            <a href="women.html" >Volver a la tienda<i class="fa fa-angle-right"></i></a>
        </div>
    </div><!-- //CONTAINER -->
</section><!-- //PAGE HEADER -->


<!-- SHOPPING BAG BLOCK -->
<section class="shopping_bag_block">

    <!-- CONTAINER -->
    <div class="container">

        <!-- ROW -->
        <div class="row">

            <!-- CART TABLE -->
            <div class="col-lg-9 col-md-9 padbot40">

                <table class="shop_table">
                    <thead>
                        <tr>
                            <th class="product-thumbnail"></th>
                            <th class="product-name">Objeto</th>
                            <th class="product-price">Precio</th>
                            <th class="product-quantity">Cantidad</th>
                            <th class="product-subtotal">Total</th>
                            <th class="product-remove"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            int sumaTotal = 0;
                            List<Productos> productosCarrito = (ArrayList< Productos>) request.getSession().getAttribute("productosCarrito");

                            for (Productos producto : productosCarrito) {

                                String referencia = producto.getReferencia();
                                String nombre = producto.getNombre();
                                String color = producto.getColor();
                                String talla = producto.getTalla();
                                int precio = producto.getPrecio();
                                sumaTotal += precio;

                        %>

                        <tr class="cart_item">
                            <td class="product-thumbnail"><a href="product-page.html" ><img src="images/tovar/women/1.jpg" width="100px" alt="" /></a></td>
                            <td class="product-name">
                                <a href="Controller?opID=MostrarProducto&Referencia=<%=referencia%>"><%=nombre%></a>
                                <ul class="variation">
                                    <li class="variation-Color">Color: <span><%=color%></span></li>
                                    <li class="variation-Size">Size: <span><%=talla%></span></li>
                                    <li class="variation-Size">Referencia:  <span><%=referencia%></span></li>
                                </ul>
                            </td>

                            <td class="product-price">€<%=precio%></td>

                            <td class="product-quantity">
                                <select class="basic">
                                    <option value="1" selected>1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </td>

                            <td class="product-subtotal">€<%=sumaTotal * 2%></td>

                            <td class="product-remove"><a href="Controller?opID=BorrarPedido&Referencia=<%=referencia%>" ><span>Borrar</span> <i>X</i></a></td>
                        </tr>
                        <% }%>

                    </tbody>
                </table>
            </div><!-- //CART TABLE -->


            <!-- SIDEBAR -->
            <div id="sidebar" class="col-lg-3 col-md-3 padbot50">

                <!-- BAG TOTALS -->
                <div class="sidepanel widget_bag_totals">
                    <h3>TOTAL CARRITO</h3>
                    <table class="bag_total">
                        <tr class="cart-subtotal clearfix">
                            <th>Sub total</th>
                            <td>€258.00</td>
                        </tr>
                        <tr class="shipping clearfix">
                            <th>Envio</th>
                            <td>Gratis</td>
                        </tr>
                        <tr class="total clearfix">
                            <th>Total</th>
                            <td>€<%=sumaTotal%></td>
                        </tr>
                    </table>
                    <form class="coupon_form" action="javascript:void(0);" method="get">
                        <input type="text" name="coupon" value="¿Tienes un cupon?" onFocus="if (this.value === '¿Tienes un cupon?')
                                    this.value = '';" onBlur="if (this.value === '')
                                                this.value = '¿Tienes un cupon?';" />
                        <input type="submit" value="Apply">
                    </form>
                    <a class="btn active" href="javascript:void(0);" >Comprar</a>
                    <a class="btn inactive" href="Controller?opID=RedirectContent" >Continuar Comprando</a>
                </div><!-- //REGISTRATION FORM -->
            </div><!-- //SIDEBAR -->
        </div><!-- //ROW -->
    </div><!-- //CONTAINER -->
</section><!-- //SHOPPING BAG BLOCK -->
