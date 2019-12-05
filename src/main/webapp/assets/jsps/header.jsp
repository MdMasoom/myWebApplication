<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>index</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/styles/header.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <!--Different links -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Flamenco">
    
</head>

<!---------------Navigation Section--------------->
    <section id="nav-bar">
        <nav class="navbar navbar-expand-lg navbar-light bg-info">
            <a class="navbar-brand" href="#"><span>LOGO</span></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">HOME <span class="sr-only">(Current)</span></a></li>

                    <li class="nav-item">
                        <a class="nav-link" href="#services">SERVICES</a></li>

                    <li class="nav-item">
                        <a class="nav-link" href="#team">TEAM</a></li>

                   <li class="nav-item">
                        <a class="nav-link" href="#promo">PROM</a></li>
                        
                    <li class="nav-item">
                        <a class="nav-link" href="#price">PRICE PLANS</a></li>

                    <li class="nav-item">
                        <a class="nav-link" href="#testimonials">TESTIMONIALS</a></li>

                    <li class="nav-item">
                        <a class="nav-link" href="#about">ABOUT</a></li>

                    <li class="nav-item">
                        <a class="nav-link" href="#contact">CONTACT</a></li>

                    <li class="nav-item">
                        <a class="nav-link" href="<%=request.getContextPath()%>/assets/jsps/register.jsp">SighUp</a></li>
                </ul>
            </div>
        </nav>
    </section> 
</html>
