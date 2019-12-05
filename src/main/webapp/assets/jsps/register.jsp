<%@ include file="/assets/jsps/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>form</title>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/styles/register.css">
</head>
    
<body>
    <div class="login-form">
        <div class="form">
            <form class="register-form">
                <input type="text" name="name" placeholder="Enter your full name" required />
		        <input type="email" name="email" placeholder="Enter your email" required />
                <input type="password" name="phone" placeholder="Enter your phone" required/>
                <input type="text" name="password" placeholder="Eneter your password" required/>
                <input type="text" name="confirm" placeholder="Confirm your password" required/>
                <button type="submit">Submit</button>
                <p class="message">Alredy Registred Please<a href="#"> Login</a> here!..</p>
            </form>
            </form>
            <form class="login-form">
                <input type="text" name="uname" placeholder="Enter your email" required />
                <input type="passrord" name="pwd" placeholder="Enter your password" required />
                <button>login</button>
                <br>
                <p class="message">Dear Customer Please<a href="#"> Register</a> here if you not existed!..</p>
            </form>
        </div>
    </div>
    
    <script src = "https://code.jquery.com/jquery-3.4.0.min.js">
    </script>
    <script>
    	$('.message a').click(function(){
            $('form').animate({
                height: "toggle", opacity: "toggle"},"slow");})
    </script>

</body>
</html>