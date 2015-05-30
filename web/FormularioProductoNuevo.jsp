<%@page import="org.mig.java.Entities.Usuarios"%>
<%@page import="org.mig.java.Entities.Categoria"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html;charset=UTF-8"%>
<script src="js/ValidarRegistro.js" type="text/javascript"></script>
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.select-to-autocomplete.js"></script>
<script>
    (function ($) {
        $(function () {
            $('select').selectToAutocomplete();

        });
    })(jQuery);
</script>
<link rel="stylesheet" href="css/jquery-ui.css">
<style>
    body {
        font-family: Arial, Verdana, sans-serif;
        font-size: 13px;
    }
    .ui-autocomplete {
        padding: 0;
        list-style: none;
        background-color: #fff;
        width: 218px;
        border: 1px solid #B0BECA;
        max-height: 350px;
        overflow-x: hidden;
    }
    .ui-autocomplete .ui-menu-item {
        border-top: 1px solid #B0BECA;
        display: block;
        padding: 4px 6px;
        color: #353D44;
        cursor: pointer;
    }
    .ui-autocomplete .ui-menu-item:first-child {
        border-top: none;
    }
    .ui-autocomplete .ui-menu-item.ui-state-focus {
        background-color: #D5E5F4;
        color: #161A1C;
    }
</style>
<!-- MY ACCOUNT PAGE -->
<section class="my_account parallax">
    <!-- CONTAINER -->
    <div class="container">
        <div class="my_account_block clearfix">
            <div id="Registro">  
                <%
                    List<Categoria> categorias = (List<Categoria>) request.getAttribute("categorias");
                    String tiendaCif = (String) request.getAttribute("tiendaCif");


                %>
                <form class="form-horizontal" id="personalForm" action="Controller?opID=AddProduct" method="post" enctype="multipart/form-data">
                    <fieldset id="registro-personal">
                        <!-- Form Name -->

                        <div id="datos_personales">
                            <legend>Nuevo Producto - <%=tiendaCif%></legend>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="name">Nombre</label>  
                                <div class="col-md-6">
                                    <input id="name" name="name" type="text" placeholder="Introduce un Nombre Producto" class="form-control input-md" required="">
                                </div>
                            </div>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="precio">Referencia</label>  
                                <div class="col-md-6">
                                    <input id="name" name="referencia" type="text" placeholder="referencia" class="form-control input-md" required="">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label" for="name">Categoria Producto</label>  
                                <div class="col-md-6">
                                    <select name="categoria" id="country-selector" autofocus="autofocus" autocorrect="off" autocomplete="off" class="col-md-6">
                                        <%for (Categoria categoria : categorias) {
                                                int idCategoria = categoria.getIdCategoria();
                                                String nombreCategoria = categoria.getDescripcion();
                                        %>
                                        <option value='<%=idCategoria%>'><%=nombreCategoria%></option>
                                        <%}%>

                                    </select>
                                </div>
                            </div>
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="precio">Precio</label>  
                                <div class="col-md-6">
                                    <input id="name" name="precio" type="text" placeholder="precio" class="form-control input-md" required="">
                                </div>
                            </div>
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="descripcion">Descripcion</label>  
                                <div class="col-md-6">
                                    <input id="name" name="descripcion" type="text" placeholder="Introduzca una descripcion" class="form-control input-md" required="">
                                </div>
                            </div>
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="talla">Talla</label>  
                                <div class="col-md-6">
                                    <input id="name" name="talla" type="text" placeholder="Introduzca una talla" class="form-control input-md" required="">
                                </div>
                            </div>
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="composicion">Composicion</label>  
                                <div class="col-md-6">
                                    <input id="name" name="composicion" type="text" placeholder="precio" class="form-control input-md" required="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="productFile">Foto Producto</label>
                                <div class="col-md-4">
                                    <input id="productFile" name="productFile" class="input-file" type="file">
                                </div>
                            </div>
                    </fieldset>
                    <a class="btn btn-lg btn-primary btn-block" id="Siguiente">Siguiente</a>
            </div>
        </div>



        <button id="myBtn" type="submit">Try it</button>
        </form>
    </div>
</div><!-- //CONTAINER -->
</section><!-- //MY ACCOUNT PAGE -->
<script>

    $('#Siguiente').click(function () {

        var ocultarPersonal = $('#registro-personal').hide("slow", function () {
            alert("The paragraph is now hidden");
        });
    });



</script>