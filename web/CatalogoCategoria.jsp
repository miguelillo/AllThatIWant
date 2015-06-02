
<%@page import="org.mig.java.Entities.Imagenes_productos"%>
<%@page import="org.mig.java.Entities.Usuarios"%>
<%@page import="java.util.List"%>
<%@page import="org.mig.java.Entities.Productos"%>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
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

    <div class="col-lg-3 col-md-3 col-xs-6 col-ss-12">
                        <a class="banner type1 margbot30" href="javascript:void(0);" ><img src="images/tovar/banner1.jpg" alt="" /></a>
                        <a class="banner type2 margbot40" href="javascript:void(0);" ><img src="images/tovar/banner2.jpg" alt="" /></a>
                    </div><!-- //BANNER -->

            <!-- SHOP PRODUCTS -->
            <div class="col-lg-9 col-sm-9 col-sm-9 padbot20">


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

                                    <%               String urlImagen;
                                        List<Imagenes_productos> listadoImagenesProductos = (List) request.getAttribute("listadoImagenesProductos");
                                        for (int x = 0; x < listadoImagenesProductos.size(); x++) {
                                            Imagenes_productos imagenes = listadoImagenesProductos.get(x);
                                            String imagenProReferencia = imagenes.getProdReferencia();

                                            if (imagenProReferencia.equals(referencia)) {
                                                urlImagen = listadoImagenesProductos.get(x).getUrl();
                                    %>  <img class="img" src=<%=urlImagen%> alt="" />
                                    <%
                                            }
                                        }

                                    %>



                                </div>
                                <div class="tovar_item_btns">
                                   

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





            </div><!-- //SHOP PRODUCTS -->
        </div><!-- //ROW -->
    </div><!-- //CONTAINER -->
</section><!-- //SHOP -->