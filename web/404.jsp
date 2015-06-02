<%@page contentType="text/html;charset=UTF-8"%>
<!-- PAGE 404 -->
<section class="page404 parallax">
    <%
        String error = (String) request.getAttribute("error");

    %>
    <!-- CONTAINER -->
    <div class="container">
        <div class="wrapper404">
            <h1>UPS!</h1>
            <h2>ERROR</h2>
            <p><%=error%></p>
            <a class="btn btn-white" href="Controller?opID=RedirectContent" >Volver a la Pagina Principal</a>
        </div>
    </div><!-- //CONTAINER -->
</section><!-- //PAGE 404 -->