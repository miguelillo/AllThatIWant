<%@page contentType="text/html;charset=UTF-8"%>

<!-- MY ACCOUNT PAGE -->
<section class="my_account parallax">

    <!-- CONTAINER -->
    <div class="container">

        <div class="my_account_block clearfix">
            <div class="checkout_payment clearfix">
                <div class="payment_method padbot70">
                    <p class="checkout_title">Metodos de pago</p>

                    <ul class="clearfix">
                        <li>
                            <input id="ridio1" type="radio" name="radio" hidden="">
                            <label for="ridio1">Visa<br><img src="images/visa.jpg" alt=""></label>
                        </li>
                        <li>
                            <input id="ridio2" type="radio" name="radio" hidden="">
                            <label for="ridio2">Master Card<br><img src="images/master_card.jpg" alt=""></label>
                        </li>
                        <li>
                            <input id="ridio3" type="radio" name="radio" hidden="">
                            <label for="ridio3">PayPal<br><img src="images/paypal.jpg" alt=""></label>
                        </li>

                    </ul>
                </div>



                <div class="clear"></div>


                <a class="btn active pull-right checkout_block_btn" href="Controller?opID=RedirectContent">Continuar</a>
            </div>

        </div>

    </div><!-- //CONTAINER -->
</section><!-- //MY ACCOUNT PAGE -->