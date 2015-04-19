<%@page import="org.mig.java.Entities.Productos"%>
<!-- BREADCRUMBS -->
<section class="breadcrumb parallax margbot30"></section>
<!-- //BREADCRUMBS -->


<!-- TOVAR DETAILS -->
<section class="tovar_details padbot70">

    <!-- CONTAINER -->
    <div class="container">

        <!-- ROW -->
        <div class="row">

            <!-- SIDEBAR TOVAR DETAILS -->
            <div class="col-lg-3 col-md-3 sidebar_tovar_details">
                <h3><b>other sweaters</b></h3>

                <ul class="tovar_items_small clearfix">
                    <li class="clearfix">
                        <img class="tovar_item_small_img" src="images/tovar/women/1.jpg" alt="" />
                        <a href="product-page.html" class="tovar_item_small_title">Embroidered bib peasant top</a>
                        <span class="tovar_item_small_price">$88.00</span>
                    </li>
                    <li class="clearfix">
                        <img class="tovar_item_small_img" src="images/tovar/women/2.jpg" alt="" />
                        <a href="product-page.html" class="tovar_item_small_title">Merino tippi sweater in geometric</a>
                        <span class="tovar_item_small_price">$67.00</span>
                    </li>
                    <li class="clearfix">
                        <img class="tovar_item_small_img" src="images/tovar/women/3.jpg" alt="" />
                        <a href="product-page.html" class="tovar_item_small_title">Merino triple-stripe elbow-patch sweater</a>
                        <span class="tovar_item_small_price">$94.00</span>
                    </li>
                    <li class="clearfix">
                        <img class="tovar_item_small_img" src="images/tovar/women/4.jpg" alt="" />
                        <a href="product-page.html" class="tovar_item_small_title">Collection cashmere getaway hoodie</a>
                        <span class="tovar_item_small_price">$228.00</span>
                    </li>
                </ul>
            </div><!-- //SIDEBAR TOVAR DETAILS -->
            <%
                Productos producto = (Productos) request.getSession().getAttribute("Producto");
                String referencia = producto.getReferencia();
                String nombre = producto.getNombre();
                String precio = String.valueOf(producto.getPrecio());
                String marca = producto.getColor();
                String talla = producto.getTalla();


            %>
            <!-- TOVAR DETAILS WRAPPER -->
            <div class="col-lg-9 col-md-9 tovar_details_wrapper clearfix">
                <div class="tovar_details_header clearfix margbot35">
                    <h3 class="pull-left"><b>Sweaters</b></h3>

                    <div class="tovar_details_pagination pull-right">
                        <a class="fa fa-angle-left" href="javascript:void(0);" ></a>
                        <span>2 of 34</span>
                        <a class="fa fa-angle-right" href="javascript:void(0);" ></a>
                    </div>
                </div>

                <!-- CLEARFIX -->
                <div class="clearfix padbot40">
                    <div class="tovar_view_fotos clearfix">
                        <div id="slider2" class="flexslider">
                            <ul class="slides">
                                <li><a href="javascript:void(0);" ><img src="images/tovar/women/1.jpg" alt="" /></a></li>
                                <li><a href="javascript:void(0);" ><img src="images/tovar/women/1_2.jpg" alt="" /></a></li>
                                <li><a href="javascript:void(0);" ><img src="images/tovar/women/1_3.jpg" alt="" /></a></li>
                                <li><a href="javascript:void(0);" ><img src="images/tovar/women/1_4.jpg" alt="" /></a></li>
                            </ul>
                        </div>
                        <div id="carousel2" class="flexslider">
                            <ul class="slides">
                                <li><a href="javascript:void(0);" ><img src="images/tovar/women/1.jpg" alt="" /></a></li>
                                <li><a href="javascript:void(0);" ><img src="images/tovar/women/1_2.jpg" alt="" /></a></li>
                                <li><a href="javascript:void(0);" ><img src="images/tovar/women/1_3.jpg" alt="" /></a></li>
                                <li><a href="javascript:void(0);" ><img src="images/tovar/women/1_4.jpg" alt="" /></a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="tovar_view_description">
                        <div class="tovar_view_title">Popover Sweatshirt in Floral Jacquard</div>
                        <div class="tovar_article">88-305-676</div>
                        <div class="clearfix tovar_brend_price">
                            <div class="pull-left tovar_brend">Calvin Klein</div>
                            <div class="pull-right tovar_view_price">$98.00</div>
                        </div>
                        <div class="tovar_color_select">
                            <p>Select color</p>
                            <a class="color1" href="javascript:void(0);" ></a>
                            <a class="color2 active" href="javascript:void(0);" ></a>
                            <a class="color3" href="javascript:void(0);" ></a>
                            <a class="color4" href="javascript:void(0);" ></a>
                        </div>
                        <div class="tovar_size_select">
                            <div class="clearfix">
                                <p class="pull-left">Select SIZE</p>
                                <span>Size & Fit</span>
                            </div>
                            <a class="sizeXS" href="javascript:void(0);" >XS</a>
                            <a class="sizeS active" href="javascript:void(0);" >S</a>
                            <a class="sizeM" href="javascript:void(0);" >M</a>
                            <a class="sizeL" href="javascript:void(0);" >L</a>
                            <a class="sizeXL" href="javascript:void(0);" >XL</a>
                            <a class="sizeXXL" href="javascript:void(0);" >XXL</a>
                            <a class="sizeXXXL" href="javascript:void(0);" >XXXL</a>
                        </div>
                        <div class="tovar_view_btn">
                            <select class="basic">
                                <option value="">QTY</option>
                                <option>Lo</option>
                                <option>Ips</option>
                                <option>Dol</option>
                                <option>Sit</option>
                                <option>Amet</option>
                            </select>
                            <a class="add_bag" href="javascript:void(0);" ><i class="fa fa-shopping-cart"></i>Add to bag</a>
                            <a class="add_lovelist" href="javascript:void(0);" ><i class="fa fa-heart"></i></a>
                        </div>
                        <div class="tovar_shared clearfix">
                            <p>Share item with friends</p>
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
                        <li class="current">Details</li>
                        <li>Information</li>
                        <li>Reviews (2)</li>
                    </ul>
                    <div class="box visible">
                        <p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                        <p>Curabitur pretium tincidunt lacus. Nulla gravida orci a odio. Nullam varius, turpis et commodo pharetra, est eros bibendum elit, nec luctus magna felis sollicitudin mauris. Integer in mauris eu nibh euismod gravida. Duis ac tellus et risus vulputate vehicula. Donec lobortis risus a elit. Etiam tempor. Ut ullamcorper, ligula eu tempor congue, eros est euismod turpis, id tincidunt sapien risus a quam. Maecenas fermentum consequat mi. Donec fermentum. Pellentesque malesuada nulla a mi. Duis sapien sem, aliquet nec, commodo eget, consequat quis, neque. Aliquam faucibus, elit ut dictum aliquet, felis nisl adipiscing sapien, sed malesuada diam lacus eget erat. Cras mollis scelerisque nunc. Nullam arcu. Aliquam consequat. Curabitur augue lorem, dapibus quis, laoreet et, pretium ac, nisi. Aenean magna nisl, mollis quis, molestie eu, feugiat in, orci. In hac habitasse platea dictumst. </p>
                    </div>
                    <div class="box">
                        Original Levi 501 <br>
                        Button fly<br>
                        Regular fit<br>
                        waist 28"-32 =16"hem<br>
                        waist 33" = 17" hem<br>
                        waist 34"-40"=18" hem<br>
                        Levi's have started to introduce the red tab with just the (R) (registered trade mark) on the red tab<br><br>

                        Size Details:<br>
                        All sizes from 28-40 waist<br>
                        Leg length 30", 32", 34", 36"
                    </div>
                    <div class="box">
                        <ul class="comments">
                            <li>
                                <div class="clearfix">
                                    <p class="pull-left"><strong><a href="javascript:void(0);" >John Doe</a></strong></p>
                                    <span class="date">2013-10-09 09:23</span>
                                    <div class="pull-right rating-box clearfix">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </div>
                                <p>Ut tellus dolor, dapibus eget, elementum vel, cursus eleifend, elit. Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Integer rutrum ante eu lacus.Vestibulum libero nisl, porta vel, scelerisque eget, malesuada at, neque.</p>
                            </li>
                            <li>
                                <div class="clearfix">
                                    <p class="pull-left"><strong><a href="javascript:void(0);" >John Doe</a></strong></p>
                                    <span class="date">2013-10-09 09:23</span>
                                    <div class="pull-right rating-box clearfix">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <p>Ut tellus dolor, dapibus eget, elementum vel, cursus eleifend, elit. Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Integer rutrum ante eu lacus.Vestibulum libero nisl, porta vel, scelerisque eget, malesuada at, neque.</p>

                                <ul>
                                    <li>
                                        <p><strong><a href="javascript:void(0);" >Jane Doe</a></strong></p>
                                        <p>Ut tellus dolor, dapibus eget, elementum vel, cursus eleifend, elit. Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Integer rutrum ante eu lacus.Vestibulum libero nisl, porta vel, scelerisque eget, malesuada at, neque.</p>
                                    </li>
                                </ul>
                            </li>
                        </ul>

                        <h3>WRITE A REVIEW</h3>
                        <p>Now please write a (short) review....(min. 200, max. 2000 characters)</p>
                        <div class="clearfix">
                            <textarea id="review-textarea"></textarea>
                            <label class="pull-left rating-box-label">Your Rate:</label>
                            <div class="pull-left rating-box clearfix">
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <input type="submit" class="dark-blue big" value="Submit a review">
                        </div>
                    </div>
                </div><!-- //TOVAR INFORMATION -->
            </div><!-- //TOVAR DETAILS WRAPPER -->
        </div><!-- //ROW -->
    </div><!-- //CONTAINER -->
</section><!-- //TOVAR DETAILS -->