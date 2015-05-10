<%@page import="org.mig.java.Entities.Productos"%>
<%@page import="java.util.List"%>

<!-- BREADCRUMBS -->
<section class="breadcrumb parallax margbot30"></section>
<!-- //BREADCRUMBS -->


<!-- PAGE HEADER -->
<section class="page_header">

    <!-- CONTAINER -->
    <div class="container">
        <h3 class="pull-left"><b>Love list</b></h3>
        <div class="pull-right">
            <a href="shopping-bag.html" >Back to shopping bag<i class="fa fa-angle-right"></i></a>
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
                        <%
                            List<Productos> listaWish = (List<Productos>) request.getSession().getAttribute("listaWish");
                        %><div class="row"><%
                            for (int i = 0; i < listaWish.size(); i++) {
                                String prodNombre = listaWish.get(i).getNombre();
                                String prodRef = listaWish.get(i).getReferencia();
                                String prodDescrip = listaWish.get(i).getDescripcion();
                                int prodPrecio = listaWish.get(i).getPrecio();

                        %>
                        <tr class="cart_item">
                            <td class="product-thumbnail"><a href="product-page.html" ><img src="images2/tovar/women/1.jpg" width="100px" alt="" /></a></td>
                            <td class="product-name">
                                <a href="Controller?opID=MostrarProducto&Referencia=<%=prodRef%> " ><%=prodNombre%></a>
                                <ul class="variation">
                                    <li class="variation-Color">Ref:  <span><%=prodRef%></span></li>
                                    <li class="variation-Size">Descrip:  <span><%=prodDescrip%></span></li>
                                </ul>
                            </td>

                            <td class="product-price"><%=prodPrecio%></td>

                            <td class="product-add-bag"><a class="add_bag" href="javascript:void(0);" ><i class="fa fa-shopping-cart"></i><span>Add to bag</span></a></td>

                            <td class="product-remove"><a href="javascript:void(0);" ><span>Delete</span> <i>X</i></a></td>
                        </tr>
                        <%}%></div><!--/row-->
                    </tbody>
                </table>
            </div><!-- //CART TABLE -->


            <!-- SIDEBAR -->
            <div id="sidebar" class="col-lg-3 col-md-3 padbot50">

                <!-- REGISTRATION FORM -->
                <div class="sidepanel widget_register_form">
                    <h3>Returning Customer</h3>
                    <p>Sign in to save and share your Love List.</p>
                    <form class="registration_form clearfix" action="javascript:void(0);" method="get">
                        <input type="text" name="text" value="Username or email" onFocus="if (this.value === 'Username or email')
                                    this.value = '';" onBlur="if (this.value === '')
                                                this.value = 'Username or email';" />
                        <input type="text" name="pass" value="Password" onFocus="if (this.value === 'Password')
                                    this.value = '';" onBlur="if (this.value === '')
                                                this.value = 'Password';" />
                        <a class="forgot_pass" href="javascript:void(0);" >Forgot password?</a>
                        <input type="submit" value="Login">
                    </form>
                </div><!-- //REGISTRATION FORM -->

                <!-- CREATE NEW ACCOUNT -->
                <div class="sidepanel widget_new_account">
                    <h3>New customers</h3>
                    <p>Don't have an account? Register with Glammy Shop to save and share your Love List.</p>
                    <a class="create_acc" href="javascript:void(0);" >Create New Account</a>
                </div><!-- //CREATE NEW ACCOUNT -->
            </div><!-- //SIDEBAR -->
        </div><!-- //ROW -->
    </div><!-- //CONTAINER -->
</section><!-- //LOVE LIST BLOCK -->