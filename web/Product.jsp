<%@page import="org.mig.java.Entities.Usuarios"%>
<%@page import="org.mig.java.Entities.Imagenes_productos"%>
<%@page import="java.util.List"%>
<%@page import="org.mig.java.Entities.Categoria"%>
<%@page contentType="text/html;charset=UTF-8"%>
<%@page import="org.mig.java.Entities.Productos"%>

<!-- BREADCRUMBS -->
<section class="breadcrumb parallax margbot30"></section>
<!-- //BREADCRUMBS -->

<%
    String urlImagen = null;
    List<Imagenes_productos> listadoImagenesProductos = (List) request.getAttribute("listadoImagenesProductos");
    Categoria categoria = (Categoria) request.getAttribute("categoria");
    Productos producto = (Productos) request.getAttribute("MostrarProducto");
    String referencia = producto.getReferencia();
    String nombre = producto.getNombre();
    String precio = String.valueOf(producto.getPrecio());
    String color = producto.getColor();
    String talla = producto.getTalla();
    String nombreCategoria = categoria.getDescripcion();
    String descripcion = producto.getDescripcion();


%>
<!-- TOVAR DETAILS -->
<section class="tovar_details padbot70">

    <!-- CONTAINER -->
    <div class="container">

        <!-- ROW -->
        <div class="row">

            <!-- SIDEBAR TOVAR DETAILS -->
            <div class="col-lg-3 col-md-3 sidebar_tovar_details">
                <h3><b>Otros <%=nombreCategoria%></b></h3>

                <ul class="tovar_items_small clearfix">
                    <%        List<Productos> listaProductos = (List) request.getAttribute("productosPorCategoria");

                        for (int i = 0; i < listaProductos.size(); i++) {
                            String referenciaPrpductoRelacionado = listaProductos.get(i).getReferencia();
                            String nombrePrpductoRelacionado = listaProductos.get(i).getNombre();
                            String precioPrpductoRelacionado = String.valueOf(listaProductos.get(i).getPrecio());
                    %>

                    <li class="clearfix">

                        <%
                            String urlImagenProductoRelacionado = "";
                            for (int x = 0; x < listadoImagenesProductos.size(); x++) {
                                Imagenes_productos imagenes = listadoImagenesProductos.get(x);
                                String imagenProReferencia = imagenes.getProdReferencia();

                                if (imagenProReferencia.equals(referencia)) {
                                    urlImagenProductoRelacionado = listadoImagenesProductos.get(x).getUrl();
                        %>  <img class="tovar_item_small_img" src=<%=urlImagenProductoRelacionado%> alt="" /><%
                                      }
                                  }

                        %>  



                        <a href="product-page.html" class="tovar_item_small_title"><%=nombrePrpductoRelacionado%></a>
                        <span class="tovar_item_small_price"><%=precioPrpductoRelacionado%></span>
                    </li>



                    <%
                        }
                    %>

                </ul>
            </div><!-- //SIDEBAR TOVAR DETAILS -->

            <!-- TOVAR DETAILS WRAPPER -->
            <div class="col-lg-9 col-md-9 tovar_details_wrapper clearfix">
                <div class="tovar_details_header clearfix margbot35">
                    <h3 class="pull-left"><b><%=nombreCategoria%></b></h3>

                </div>

                <!-- CLEARFIX -->
                <div class="clearfix padbot40">
                    <div class="tovar_view_fotos clearfix">
                        <div id="slider2" class="flexslider">
                            <ul class="slides">
                                <%
                                    for (int x = 0; x < listadoImagenesProductos.size(); x++) {
                                        Imagenes_productos imagenes = listadoImagenesProductos.get(x);
                                        String imagenProReferencia = imagenes.getProdReferencia();

                                        if (imagenProReferencia.equals(referencia)) {
                                            urlImagen = listadoImagenesProductos.get(x).getUrl();
                                %> <li><a href="javascript:void(0);" > <img class="img" src=<%=urlImagen%> alt="" /></a></li><%
                                        }
                                    }

                                        %>  

                            </ul>
                        </div>
                        <div id="carousel2" class="flexslider">
                            <ul class="slides">
                                <%                                       for (int x = 0; x < listadoImagenesProductos.size(); x++) {
                                        Imagenes_productos imagenes = listadoImagenesProductos.get(x);
                                        String imagenProReferencia = imagenes.getProdReferencia();

                                        if (imagenProReferencia.equals(referencia)) {
                                            urlImagen = listadoImagenesProductos.get(x).getUrl();
                                %> <li><a href="javascript:void(0);" > <img class="img" src=<%=urlImagen%> alt="" /></a></li><%
                                        }
                                    }

                                        %> 
                            </ul>
                        </div>
                    </div>

                    <div class="tovar_view_description">
                        <div class="tovar_view_title"><%=nombre%></div>
                        <div class="tovar_article"><%=referencia%></div>
                        <div class="clearfix tovar_brend_price">
                            <div class="pull-left tovar_brend">Tienda</div>
                            <div class="pull-right tovar_view_price">€<%=precio%></div>
                        </div>
                        <div class="tovar_color_select">
                            <p>COLOR</p>
                            <a class="color1" href="javascript:void(0);" ><%=color%></a>
                        </div>
                        <div class="tovar_size_select">
                            <div class="clearfix">
                                <p class="pull-left">Talla</p>
                            </div>
                            <a class="sizeXS" href="javascript:void(0);" ><%=talla%></a>
                        </div>
                        <div class="tovar_view_btn">
                            <%Usuarios sesion = (Usuarios) request.getSession().getAttribute("usuarioValido");

                                if (sesion != null) {


                            %>
                            <a class="add_bag" href="Controller?opID=RealizarPedido&referencia=<%=referencia%>" ><i class="fa fa-shopping-cart"></i>Añadir a la bolsa</a>
                            <a class="add_lovelist" href="Controller?opID=AddWishList&Referencia=<%=referencia%>" ><i class="fa fa-heart"></i></a>
                                <%} else {%>
                            <h1>Registrate para poder comprarlo!</h1>
                            <%}%>
                        </div>
                        <div class="tovar_shared clearfix">
                            <p>Compartir!</p>
                            <ul>
                                <li><a class="facebook" href="javascript:void(0);" ><i class="fa fa-facebook"></i></a></li>
                                <li><a class="twitter" href="javascript:void(0);" ><i class="fa fa-twitter"></i></a></li>
                                <li><a class="linkedin" href="javascript:void(0);" ><i class="fa fa-linkedin"></i></a></li>
                                <li><a class="google-plus" href="javascript:void(0);" ><i class="fa fa-google-plus"></i></a></li>
                                <li><a class="tumblr" href="javascript:void(0);" ><i class="fa fa-tumblr"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div><!-- //CLEARFIX -->

                <!-- TOVAR INFORMATION -->
                <div class="tovar_information">
                    <ul class="tabs clearfix">
                        <li>Descripcion</li>

                    </ul>
                    <div class="box visible">

                        <%=descripcion%>
                    </div>

                </div><!-- //TOVAR INFORMATION -->
            </div><!-- //TOVAR DETAILS WRAPPER -->
        </div><!-- //ROW -->
    </div><!-- //CONTAINER -->
</section><!-- //TOVAR DETAILS -->