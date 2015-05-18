<%-- 
     Document   : index
     Created on : 29-mar-2015, 21:12:56
     Author     : miguelangel
--%>

<%@page import="org.mig.java.Entities.Usuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>All That I Want</title>
        <!-- CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="css/flexslider.css" rel="stylesheet" type="text/css" />
        <link href="css/fancySelect.css" rel="stylesheet" media="screen, projection" />
        <link href="css/animate.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link href="css/bootstrap-formhelpers.min.css" rel="stylesheet" type="text/css"/>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="js/BootrapFormHelper/bootstrap-formhelpers.min.js"></script>
        <!--Scripts personalaes-->
        <script src="js/LoginUserGson.js"></script>
        <!-- FONTS -->
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
        <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">

    </head>
    <body>
        <!-- PRELOADER -->
        <div id="preloader"><img src="images/loading.gif" alt="" /></div>
        <!-- //PRELOADER -->
        <div class="preloader_hide">
            <!-- Small modal -->

            <jsp:include page="LoginModal.jsp"></jsp:include>

                <!-- PAGE -->
                <div id="page">

                    <!-- HEADER -->
                    <header>
                    <jsp:include page="Menu.jsp"></jsp:include>
                    </header><!-- //HEADER -->

                <%String pagina = (String) request.getAttribute("pagina");
                    if (pagina != null) {
                %>


                <jsp:include page="<%=pagina%>"></jsp:include>
                <%} else {%>
                <jsp:include page="Content.jsp"></jsp:include>
                <%}%>

                <jsp:include page="Footer.jsp"></jsp:include>
                <!-- SCRIPTS -->
                <!--[if IE]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
                <!--[if IE]><html class="ie" lang="en"> <![endif]-->

                <script src="js/jquery.min.js" type="text/javascript"></script>
                <script src="js/bootstrap.min.js" type="text/javascript"></script>
                <script src="js/superfish.min.js" type="text/javascript"></script>
                <script src="js/jquery.sticky.js" type="text/javascript"></script>
                <script src="js/parallax.js" type="text/javascript"></script>
                <script src="js/jquery.flexslider-min.js" type="text/javascript"></script>
                <script src="js/jquery.jcarousel.js" type="text/javascript"></script>
                <script src="js/fancySelect.js"></script>
                <script src="js/animate.js" type="text/javascript"></script>
                <script src="js/myscript.js" type="text/javascript"></script>4
                <script>
                    if (top !== self)
                        top.location.replace(self.location.href);
                </script>
                </body>
                </html>
