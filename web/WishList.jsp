<%@page import="org.mig.java.Entities.Imagenes_productos"%>
<%@page import="org.mig.java.Entities.Productos"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html;charset=UTF-8"%>
<!-- BREADCRUMBS -->
<section class="breadcrumb parallax margbot30"></section>
<!-- //BREADCRUMBS -->


<!-- PAGE HEADER -->
<section class="page_header">

    <!-- CONTAINER -->
    <div class="container">
        <h3 class="pull-left"><b>Love list</b></h3>
        <div class="pull-right">
            <a href="Controller?opID=RedirectContent" >Volver a la tienda<i class="fa fa-angle-right"></i></a>
        </div>
    </div><!-- //CONTAINER -->
</section><!-- //PAGE HEADER -->
<section class="love_list_block">

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
                            <th class="product-add-bag"></th>
                            <th class="product-remove"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <%List<Productos> listaWish = (List<Productos>) request.getSession().getAttribute("listaWish");%>
                    <div class="row"><%
                        for (int i = 0; i < listaWish.size(); i++) {
                            String prodNombre = listaWish.get(i).getNombre();
                            String prodRef = listaWish.get(i).getReferencia();
                            String prodDescrip = listaWish.get(i).getDescripcion();
                            int prodPrecio = listaWish.get(i).getPrecio();
                        %>
                        <tr class="cart_item">
                            <td class="product-thumbnail">
                                <%
                                    String urlImagen;
                                    List<Imagenes_productos> listadoImagenesProductos = (List) request.getAttribute("listadoImagenesProductos");
                                    for (int x = 0; x < listadoImagenesProductos.size(); x++) {
                                        Imagenes_productos imagenes = listadoImagenesProductos.get(x);
                                        String imagenProReferencia = imagenes.getProdReferencia();

                                        if (imagenProReferencia.equals(prodRef)) {
                                            urlImagen = listadoImagenesProductos.get(x).getUrl();
                                %>   <a href="Controller?opID=MostrarProducto&Referencia=<%=prodRef%> " ><img src=<%=urlImagen%> width="100px" alt="" /></a></td>
                                    <%}
                                        }%>
                            <td class="product-name">
                                <a href="Controller?opID=MostrarProducto&Referencia=<%=prodRef%>"><%=prodNombre%></a>
                                <ul class="variation">
                                    <li class="variation-Color">Ref:  <span><%=prodRef%></span></li>
                                    <li class="variation-Size">Descrip:  <span><%=prodDescrip%></span></li>
                                </ul>
                            </td>
                            <td class="product-price"><%=prodPrecio%></td>
                            <td class="product-add-bag"><a class="add_bag"href="Controller?opID=RealizarPedido&referencia=<%=prodRef%>" class="fa fa-shopping-cart"></i>
                                    <span>Añadir al carrito</span></a></td>
                            <td class="product-remove"><a href="Controller?opID=BorrarWishListItem&Referencia=<%=prodRef%>" ><span>Borrar</span> <i>X</i></a></td>
                        </tr>
                        <%}%></div>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>
