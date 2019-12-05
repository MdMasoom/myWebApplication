<%@ include file="/assets/jsps/header.jsp"%>

<html>
<head>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/styles/style.css">
</head>
<body> 
<!---------------Slider Section--------------->
   <div id="slider">
        <div id="headerSlider" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#headerSlider" data-slide-to="0" class="active"></li>
                <li data-target="#headerSlider" data-slide-to="1"></li>
                <li data-target="#headerSlider" data-slide-to="2"></li>
                <li data-target="#headerSlider" data-slide-to="3"></li>
                <li data-target="#headerSlider" data-slide-to="4"></li>
            </ol> 
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="<%=request.getContextPath() %>/assets/images/slider1.JPG" class="d-block img-fluid" alt="...">
                    <div class="carousel-caption">
                        <h5>THIS IS THE HOMR PAGE</h5>
                    </div>
                </div>

                <div class="carousel-item">
                    <img src="<%=request.getContextPath() %>/assets/images/slider2.JPG" class="d-block img-fluid" alt="...">
                    <div class="carousel-caption">
                        <h5>This is the first page</h5>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="<%=request.getContextPath() %>/assets/images/slider3.JPG" class="d-block img-fluid" alt="...">
                    <div class="carousel-caption">
                        <h5>This is the first page</h5>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="<%=request.getContextPath() %>/assets/images/slider4.JPG" class="d-block img-fluid" alt="...">
                    <div class="carousel-caption">
                        <h5>This is the first page</h5>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="<%=request.getContextPath() %>/assets/images/slider5.JPG" class="d-block img-fluid" alt="...">
                    <div class="carousel-caption">
                        <h5>This is the first page</h5>
                    </div>
                </div>
            </div>

            <a class="carousel-control-prev" href="#headerSlider" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span></a>

            <a class="carousel-control-next" href="#headerSlider" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span></a>
        </div>
    </div> 
    
<!---------------About Section--------------->
    <section id="about">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2>About Us</h2>
                    <div class="about-content">
                        Overview articles summarize in prose a broad topic like biology, and also have illustrations and links to subtopics like cell biology, biographies like Carl Linnaeus, and other related articles like Human Genome Project
                    </div>
                    <button type="button" class="btn btn-primary">Read More..</button>
                 </div>
                 <div class="col-md-6 skills-bar">
                    <p>Adobe Photoshop</p>
                    <div class="progress">
                        <div class="progress-bar" style="width: 78%;">78%</div>
                     </div>    

                    <p>UI Design</p>
                    <div class="progress">
                        <div class="progress-bar" style="width: 65%;">65%</div>
                     </div>  

                    <p>WordPress</p>
                    <div class="progress">
                        <div class="progress-bar" style="width: 53%;">53%</div>
                     </div>  

                    <p>Graphics Design</p>
                    <div class="progress">
                        <div class="progress-bar" style="width: 40%;">40%</div>
                     </div>
                </div>
                <div class="text">
                    <p style="color: blue">You can write any thing below</p>
                </div>
            </div>
        </div>
    </section>

<!---------------Servicess Section--------------->
   <section id="services">
        <div class="container">
            <h1>Our Services</h1>
            <div class="row services">
                <div class="col-md-3 text-center">
                    <div class="icon">
                        <i class="fa fa-desktop"></i>
                    </div>
                    <h3>Web Develoment</h3>
                    <p>Outline pages have trees of topics in an outline format, which in turn are linked to further outlines and articles providing more detail..</p>
                </div>
                
                <div class="col-md-3 text-center">
                    <div class="icon">
                        <i class="fa fa-tablet"></i>
                    </div>
                    <h3>App Develoment</h3>
                    <p>Outline pages have trees of topics in an outline format, which in turn are linked to further outlines and articles providing more detail..</p>
                </div>
                
                <div class="col-md-3 text-center"> 
                    <div class="icon">
                        <i class="fa fa-line-chart"></i>
                    </div>
                    <h3>Digital Marketing</h3>
                    <p>Outline pages have trees of topics in an outline format, which in turn are linked to further outlines and articles providing more detail..</p>
                </div>
                
                <div class="col-md-3 text-center">
                    <div class="icon">
                        <i class="fa fa-paint-brush"></i>
                    </div>
                    <h3>Graphics Designing</h3>
                    <p>Outline pages have trees of topics in an outline format, which in turn are linked to further outlines and articles providing more detail..</p>
                </div>
            </div>
        </div>
    </section>
    
<!---------------Team Member Section--------------->
    <section id="team">
        <div class="container">
            <h1>Our Team</h1>
            <div class="row">
                <div class="col-md-3 profile-pic text-center">
                    <div class="img-box">
                        <img src="<%=request.getContextPath() %>/assets/images/Masoom.png" class="img-responsive">
                        <ul>
                            <a href="#"><li><i class="fa fa-facebook"></i></li></a>
                            <a href="#"><li><i class="fa fa-linkedin"></i></li></a>
                            <a href="#"><li><i class="fa fa-twitter"></i></li></a>
                            <a href="#"><li><i class="fa fa-instagram"></i></li></a>
                        </ul>
                    </div>
                    <h2>Your Name</h2>
                    <h3>Founder/CEO</h3>
                    <p>Important subtopics relate to each other based on the arrangement..</p>
                </div>
                
                <div class="col-md-3 profile-pic text-center">
                    <div class="img-box">
                        <img src="<%=request.getContextPath() %>/assets/images/Masoom.png" class="img-responsive">
                        <ul>
                            <a href="#"><li><i class="fa fa-facebook"></i></li></a>
                            <a href="#"><li><i class="fa fa-linkedin"></i></li></a>
                            <a href="#"><li><i class="fa fa-twitter"></i></li></a>
                            <a href="#"><li><i class="fa fa-instagram"></i></li></a>
                        </ul>
                    </div>
                    <h2>Name Name</h2>
                    <h3>Business Head</h3>
                    <p>Important subtopics relate to each other based on the arrangement..</p>
                </div>
                
                <div class="col-md-3 profile-pic text-center">
                    <div class="img-box">
                        <img src="<%=request.getContextPath() %>/assets/images/Masoom.png" class="img-responsive">
                        <ul>
                            <a href="#"><li><i class="fa fa-facebook"></i></li></a>
                            <a href="#"><li><i class="fa fa-linkedin"></i></li></a>
                            <a href="#"><li><i class="fa fa-twitter"></i></li></a>
                            <a href="#"><li><i class="fa fa-instagram"></i></li></a>
                        </ul>
                    </div>
                    <h2>Name Name</h2>
                    <h3>Team Head</h3>
                    <p>Important subtopics relate to each other based on the arrangement..</p>
                </div>
                
                <div class="col-md-3 profile-pic text-center">
                    <div class="img-box">
                        <img src="<%=request.getContextPath() %>/assets/images/Masoom.png" class="img-responsive">
                        <ul>
                            <a href="#"><li><i class="fa fa-facebook"></i></li></a>
                            <a href="#"><li><i class="fa fa-linkedin"></i></li></a>
                            <a href="#"><li><i class="fa fa-twitter"></i></li></a>
                            <a href="#"><li><i class="fa fa-instagram"></i></li></a>
                        </ul>
                    </div>
                    <h2>Name Name</h2>
                    <h3>Marketing Head</h3>
                    <p>Important subtopics relate to each other based on the arrangement..</p>
                </div>
            </div>
        </div>
    </section>
    
<!---------------Promotion Section--------------->
    <section id="promo">
        <div class="container">
            <p>Get Free Domain Name and Web Hosting</p>
            <a href="#contact" class="btn btn-primary">Contact Us</a>
        </div>
    </section>
  
<!---------------Price Section--------------->
    <section id="price">
        <div class="container">
            <h1>Price Plans</h1>
            <div class="row">
                <div class="col-md-3">
                    <div class="single-price">
                        <div class="price-head">
                            <h2>Free</h2>
                            <p>$0/<span>Month</span></p>
                        </div>
                        <div class="price-content">
                            <ul>
                                <li><i class="fa fa-check-circle">5GB Free</i></li>
                                <li><i class="fa fa-check-circle">10GB Bandwidth</i></li>
                                <li><i class="fa fa-times-circle">15 Email Account</i></li>
                                <li><i class="fa fa-times-circle">Unlimited Domain</i></li>
                                <li><i class="fa fa-times-circle">Unlimited Support</i></li>
                            </ul>
                        </div>
                        <div class="price-button">
                            <a class="buy-btn" href="#">Join Free</a>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-3">
                    <div class="single-price">
                        <div class="price-head">
                            <h2>Start Up</h2>
                            <p>$10/<span>Month</span></p>
                        </div>
                        <div class="price-content">
                            <ul>
                                <li><i class="fa fa-check-circle">10GB Free</i></li>
                                <li><i class="fa fa-check-circle">100GB Bandwidth</i></li>
                                <li><i class="fa fa-check-circle">15 Email Account</i></li>
                                <li><i class="fa fa-times-circle">Unlimited Domain</i></li>
                                <li><i class="fa fa-times-circle">Unlimited Support</i></li>
                            </ul>
                        </div>
                        <div class="price-button">
                            <a class="buy-btn" href="#">Buy Now</a>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-3">
                    <div class="single-price">
                        <div class="price-head">
                            <h2>Business</h2>
                            <p>$50/<span>Month</span></p>
                        </div>
                        <div class="price-content">
                            <ul>
                                <li><i class="fa fa-check-circle">20GB Free</i></li>
                                <li><i class="fa fa-check-circle">200GB Bandwidth</i></li>
                                <li><i class="fa fa-check-circle">50 Email Account</i></li>
                                <li><i class="fa fa-check-circle">Unlimited Domain</i></li>
                                <li><i class="fa fa-times-circle">Unlimited Support</i></li>
                            </ul>
                        </div>
                        <div class="price-button">
                            <a class="buy-btn" href="#">Buy Now</a>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-3">
                    <div class="single-price">
                        <div class="price-head">
                            <h2>Advanced</h2>
                            <p>$100/<span>Month</span></p>
                        </div>
                        <div class="price-content">
                            <ul>
                                <li><i class="fa fa-check-circle">50GB Free</i></li>
                                <li><i class="fa fa-check-circle">Unlimited Bandwidth</i></li>
                                <li><i class="fa fa-check-circle">Unlimited Email Account</i></li>
                                <li><i class="fa fa-check-circle">Unlimited Domain</i></li>
                                <li><i class="fa fa-check-circle">Unlimited Support</i></li>
                            </ul>
                        </div>
                        <div class="price-button">
                            <a class="buy-btn" href="#">Buy Now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
<!---------------Testimonial Section--------------->
    <section id="testimonials">
        <div class="container">
            <h1>Testimonials</h1>
            <p class="text-center"></p><h4>Subscribe to Our Website for More Informations</h4>
            <div class="row">
                <div class="col-md-3 text-center">
                    <div class="profile">
                        <img src="<%=request.getContextPath() %>/assets/images/Masoom.png" class="user">
                        <blockquote>Overview articles summarize in prose a broad topic like biology, and also have illustrations and links to subtopics like cell biology..</blockquote>
                        <h3>Person Name <span>Co-Founder at XYZ</span></h3>
                    </div>
                </div>
                
                <div class="col-md-3 text-center">
                    <div class="profile">
                        <img src="<%=request.getContextPath() %>/assets/images/Masoom.png" class="user">
                        <blockquote>Overview articles summarize in prose a broad topic like biology, and also have illustrations and links to subtopics like cell biology..</blockquote>
                        <h3>Person Name <span>Manager at XYZ</span></h3>
                    </div>
                </div>
                
                <div class="col-md-3 text-center">
                    <div class="profile">
                        <img src="<%=request.getContextPath() %>/assets/images/Masoom.png" class="user">
                        <blockquote>Overview articles summarize in prose a broad topic like biology, and also have illustrations and links to subtopics like cell biology..</blockquote>
                        <h3>Person Name <span>Creater at XYZ</span></h3>
                    </div>
                </div>
                
                <div class="col-md-3 text-center">
                    <div class="profile">
                        <img src="<%=request.getContextPath() %>/assets/images/Masoom.png" class="user">
                        <blockquote>Overview articles summarize in prose a broad topic like biology, and also have illustrations and links to subtopics like cell biology..</blockquote>
                        <h3>Person Name <span>Creater at XYZ</span></h3>
                    </div>
                </div>
            
            </div>
        </div>
    </section> 
    
<!---------------Get in Touch Contact Section--------------->
    <section id="contact">
        <div class="container">
            <h1>Get In Touch</h1>
            <div class="row">
                <div class="col-md-6">
                    <form class="contant-form">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Your Name" required>
                        </div>
                        <div class="form-group">
                            <input type="phone" class="form-control" placeholder="Phone no." required>
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" placeholder="Email Id" required>
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" rows="5" placeholder="Message" required></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Send Message</button>
                    </form>
                </div>
                
                <div class="col-md-6 contact-info">
                    <div class="follow"><b>Address: </b><i class="fa fa-map-marker"> Location, Street or Area Name</i></div>
                    <div class="follow"><b>Phone: </b><i class="fa fa-phone"> +919582421584</i></div>
                    <div class="follow"><b>Email: </b><i class="fa fa-envelope-o"> example@gmail.com</i></div>
                    <div class="follow"> <label><b>Get Social:</b></label>
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-youtube-play"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-google-plus"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    

    <!-- https://github.com/cferdinandi/smooth-scroll Path of this file (smooth-scroll-master\dist\smooth-scroll) download Zip and copy & past this file in js folder"smooth-scroll" -->
    
    <script src="<%=request.getContextPath() %>/assets/scripts/smooth-scroll.js"></script>
    <script>
	   var scroll = new SmoothScroll('a[href*="#"]');
    </script>

    
</body>
<%@ include file="/assets/jsps/footer.jsp"%>
</html>
