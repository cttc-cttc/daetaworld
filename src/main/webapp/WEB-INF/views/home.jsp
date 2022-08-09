<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<html>
<head>
	<title>Home</title>
	<!-- Font Awesome -->
	<link
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
		rel="stylesheet" />
	<!-- Google Fonts -->
	<link
		href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
		rel="stylesheet" />
	<!-- MDB -->
	<link
		href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.4.0/mdb.min.css"
		rel="stylesheet" />
	<!-- MDB -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.4.0/mdb.min.js"></script>
	<!-- https://mdbootstrap.com/docs/standard/ -->
</head>
<body>
<h1>
	Material Design Bootstrap 5 연습 페이지
</h1>
<P>  The time on the server is ${serverTime}. </P>
<a href="main">main</a>
<hr><br>
	<div id="carouselExampleCaptions"
		class="carousel slide carousel-fade shadow-3-strong"
		data-mdb-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-mdb-target="#carouselExampleCaptions" data-mdb-slide-to="0"
				class=""></li>
			<li data-mdb-target="#carouselExampleCaptions" data-mdb-slide-to="1"
				class=""></li>
			<li data-mdb-target="#carouselExampleCaptions" data-mdb-slide-to="2"
				class="active" aria-current="true"></li>
		</ol>

		<!-- Inner -->
		<div class="carousel-inner">
			<!-- Single item -->
			<div class="carousel-item">
				<img
					src="https://mdbcdn.b-cdn.net/img/Photos/Slides/img%20(15).webp"
					class="d-block w-100" alt="Sunset Over the City">
				<div class="carousel-caption d-none d-md-block">
					<h5>First slide label</h5>
					<p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
				</div>
			</div>

			<!-- Single item -->
			<div class="carousel-item">
				<img
					src="https://mdbcdn.b-cdn.net/img/Photos/Slides/img%20(22).webp"
					class="d-block w-100" alt="Canyon at Night">
				<div class="carousel-caption d-none d-md-block">
					<h5>Second slide label</h5>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
				</div>
			</div>

			<!-- Single item -->
			<div class="carousel-item active">
				<img
					src="https://mdbcdn.b-cdn.net/img/Photos/Slides/img%20(23).webp"
					class="d-block w-100" alt="Cliff Above a Stormy Sea">
				<div class="carousel-caption d-none d-md-block">
					<h5>Third slide label</h5>
					<p>Praesent commodo cursus magna, vel scelerisque nisl
						consectetur.</p>
				</div>
			</div>
		</div>
		<!-- Inner -->

		<!-- Controls -->
		<a class="carousel-control-prev" href="#carouselExampleCaptions"
			role="button" data-mdb-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="visually-hidden">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleCaptions"
			role="button" data-mdb-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="visually-hidden">Next</span>
		</a>
	</div>
	<br>
	<br>
	<div class="text-center">
		<section class="mb-4">
			<button type="button" class="btn btn-primary">Primary</button>
			<button type="button" class="btn btn-secondary">Secondary</button>
			<button type="button" class="btn btn-success">Success</button>
			<button type="button" class="btn btn-danger">Danger</button>
			<button type="button" class="btn btn-warning">Warning</button>
			<button type="button" class="btn btn-info">Info</button>
			<button type="button" class="btn btn-light">Light</button>
			<button type="button" class="btn btn-dark">Dark</button>
			<button type="button" class="btn btn-link"
				data-mdb-ripple-color="dark">Link</button>
		</section>
	
		<br><br>
		<section class="mb-4">
			<button type="button" class="btn btn-primary btn-lg btn-floating">
				<i class="fab fa-facebook-f"></i>
			</button>
			<button type="button"
				class="btn btn-outline-success btn-floating btn-lg"
				data-mdb-ripple-color="dark">
				<i class="fas fa-star"></i>
			</button>
			<button type="button" class="btn btn-danger btn-floating btn-lg">
				<i class="fas fa-magic"></i>
			</button>
			<button type="button" class="btn btn-dark btn-floating btn-lg">
				<i class="fab fa-apple"></i>
			</button>
		</section>
		<br><br>
		<section class="mb-4">
			<!-- Facebook -->
			<a class="btn btn-primary" style="background-color: #3b5998" href="#!"
				role="button"><i class="fab fa-facebook-f"></i></a>
	
			<!-- Twitter -->
			<a class="btn btn-primary" style="background-color: #55acee" href="#!"
				role="button"><i class="fab fa-twitter"></i></a>
	
			<!-- Google -->
			<a class="btn btn-primary" style="background-color: #dd4b39" href="#!"
				role="button"><i class="fab fa-google"></i></a>
	
			<!-- Instagram -->
			<a class="btn btn-primary" style="background-color: #ac2bac" href="#!"
				role="button"><i class="fab fa-instagram"></i></a>
	
			<!-- Linkedin -->
			<a class="btn btn-primary" style="background-color: #0082ca" href="#!"
				role="button"><i class="fab fa-linkedin-in"></i></a>
	
			<!-- Pinterest -->
			<a class="btn btn-primary" style="background-color: #c61118" href="#!"
				role="button"><i class="fab fa-pinterest"></i></a>
	
			<!-- Vkontakte -->
			<a class="btn btn-primary" style="background-color: #4c75a3" href="#!"
				role="button"><i class="fab fa-vk"></i></a>
	
			<!-- Stack overflow -->
			<a class="btn btn-primary" style="background-color: #ffac44" href="#!"
				role="button"><i class="fab fa-stack-overflow"></i></a>
	
			<!-- Youtube -->
			<a class="btn btn-primary" style="background-color: #ed302f" href="#!"
				role="button"><i class="fab fa-youtube"></i></a>
	
			<!-- Slack -->
			<a class="btn btn-primary" style="background-color: #481449" href="#!"
				role="button"><i class="fab fa-slack-hash"></i></a>
	
			<!-- Github -->
			<a class="btn btn-primary" style="background-color: #333333" href="#!"
				role="button"><i class="fab fa-github"></i></a>
	
			<!-- Dribbble -->
			<a class="btn btn-primary" style="background-color: #ec4a89" href="#!"
				role="button"><i class="fab fa-dribbble"></i></a>
	
			<!-- Reddit -->
			<a class="btn btn-primary" style="background-color: #ff4500" href="#!"
				role="button"><i class="fab fa-reddit-alien"></i></a>
	
			<!-- Whatsapp -->
			<a class="btn btn-primary" style="background-color: #25d366" href="#!"
				role="button"><i class="fab fa-whatsapp"></i></a>
		</section>
	</div>
	<br><br>
	<div class="row">
            <!--Grid column-->
            <div class="col-md-5 mb-4">
              <h1>Example heading <span class="badge bg-primary">New</span></h1>
              <h2>Example heading <span class="badge bg-primary">New</span></h2>
              <h3>Example heading <span class="badge bg-primary">New</span></h3>
              <h4>Example heading <span class="badge bg-primary">New</span></h4>
              <h5>Example heading <span class="badge bg-primary">New</span></h5>
              <h6>Example heading <span class="badge bg-primary">New</span></h6>
            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-md-3 mb-4">
            	<div>
              <a href="">
                <span><i class="fas fa-envelope fa-lg"></i></span>
                <span class="badge bg-danger badge-dot"></span>
              </a>
              </div>

              <br>

				<div>
              <a href="">
                <span><i class="fas fa-envelope fa-lg"></i></span>
                <span class="badge rounded-pill badge-notification bg-danger">1</span>
              </a>
				</div>
              <br>
				<div>
              <a href="">
                <span><i class="fas fa-envelope fa-lg"></i></span>
                <span class="badge rounded-pill badge-notification bg-danger">999+</span>
              </a>
              </div>
            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-md-4 mb-4">
              <span class="badge rounded-pill bg-primary">Primary</span>
              <span class="badge rounded-pill bg-secondary">Secondary</span>
              <span class="badge rounded-pill bg-success">Success</span>
              <span class="badge rounded-pill bg-danger">Danger</span>
              <span class="badge rounded-pill bg-warning text-dark">Warning</span>
              <span class="badge rounded-pill bg-info">Info</span>
              <span class="badge rounded-pill bg-light text-dark">Light</span>
              <span class="badge rounded-pill bg-dark">Dark</span>

              <br>
              <br>

              <button type="button" class="btn btn-primary">
                Notifications<span class="badge bg-danger ms-2">8</span>
              </button>

              <br>
              <br>

              <span class="badge bg-primary">Primary</span>
              <span class="badge bg-secondary">Secondary</span>
              <span class="badge bg-success">Success</span>
              <span class="badge bg-danger">Danger</span>
              <span class="badge bg-warning text-dark">Warning</span>
              <span class="badge bg-info">Info</span>
              <span class="badge bg-light text-dark">Light</span>
              <span class="badge bg-dark">Dark</span>
            </div>
            <!--Grid column-->
          </div>
</body>
</html>