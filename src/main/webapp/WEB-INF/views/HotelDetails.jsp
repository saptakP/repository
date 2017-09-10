<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
.gm-style .gm-style-cc span, .gm-style .gm-style-cc a, .gm-style .gm-style-mtc div
	{
	font-size: 10px
}
</style>
<style type="text/css">
@media print {
	.gm-style .gmnoprint, .gmnoprint {
		display: none
	}
}

@media screen {
	.gm-style .gmnoscreen, .gmnoscreen {
		display: none
	}
}
</style>
<style type="text/css">
.gm-style-pbc {
	transition: opacity ease-in-out;
	background-color: rgba(0, 0, 0, 0.45);
	text-align: center
}

.gm-style-pbt {
	font-size: 22px;
	color: white;
	font-family: Roboto, Arial, sans-serif;
	position: relative;
	margin: 0;
	top: 50%;
	-webkit-transform: translateY(-50%);
	-ms-transform: translateY(-50%);
	transform: translateY(-50%)
}
</style>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

<link
	href="<spring:url value="/static/admin/bootstrap/css/font-awesome.min.css"/>"
	rel="stylesheet" type="text/css">
<link
	href="<spring:url value="/static/admin/bootstrap/css/bootstrap.min.css"/>"
	rel="stylesheet" type="text/css">
<link href="<spring:url value="/static/admin/css/custom.css"/>"
	rel="stylesheet" type="text/css">

<title>DamWeb - Hotel Detail</title>
<style type="text/css">
.gm-style {
	font: 400 11px Roboto, Arial, sans-serif;
	text-decoration: none;
}

.gm-style img {
	max-width: none;
}
</style>
<body class="">

	<div class="page-wrapper">

		<header class="header">
			<div class="header-wrapper">
				<div class="container">
					<div class="header-inner">
						<div class="header-logo">
							<a href=""> <span>DamWeb</span>
							</a>
						</div>
						<!-- /.header-logo -->

						<div class="header-content">
							<div class="header-top"></div>
							<!-- /.header-top -->

							<div class="header-bottom">
								
								<!-- /.header-action -->

								<ul
									class="header-nav-primary nav nav-pills collapse navbar-collapse">
									<c:choose>
										<c:when
											test="${sessionScope.userbean.userName == null or sessionScope.userbean.userName == ''}">
											<li><a href="<spring:url value="prelogin"/>">Login</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="<spring:url value="logout"/>">Logout</a></li>
										</c:otherwise>
									</c:choose>
								</ul>

								<button class="navbar-toggle collapsed" type="button"
									data-toggle="collapse" data-target=".header-nav-primary">
									<span class="sr-only">Toggle navigation</span> <span
										class="icon-bar"></span> <span class="icon-bar"></span> <span
										class="icon-bar"></span>
								</button>

							</div>
							<!-- /.header-bottom -->
						</div>
						<!-- /.header-content -->
					</div>
					<!-- /.header-inner -->
				</div>
				<!-- /.container -->
			</div>
			<!-- /.header-wrapper -->
		</header>
		<!-- /.header -->




		<div class="main">
		
			<div class="main-inner">
				
				<div class="content">
					<div class="mt-80 mb80"><a href='<spring:url value="/"/>'>Back to Search Results</a></div>

					<div class="container">
						<div class="row detail-content">
							<div class="col-sm-7">
								<div id="myCarousel" class="carousel slide" data-ride="carousel">
									<!-- Indicators -->
									<ol class="carousel-indicators">
										<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
										<li data-target="#myCarousel" data-slide-to="1"></li>
										<li data-target="#myCarousel" data-slide-to="2"></li>
									</ol>

									<!-- Wrapper for slides -->
									<div class="carousel-inner">
										<div class="item active">
											<img src="static/assets/HTB01/HT_DETAIL/gallery-image-1.jpg"
												alt="Los Angeles" width="650" height="300">
										</div>

										<div class="item">
											<img src="static/assets/HTB01/HT_DETAIL/gallery-image-2.jpg"
												alt="Chicago" width="650" height="300">
										</div>

										<div class="item">
											<img src="static/assets/HTB01/HT_DETAIL/gallery-image-8.jpg"
												alt="New York" width="650" height="300">
										</div>
									</div>

									<!-- Left and right controls -->
									<a class="left carousel-control" href="#myCarousel"
										data-slide="prev"> <span
										class="glyphicon glyphicon-chevron-left"></span> <span
										class="sr-only">Previous</span>
									</a> <a class="right carousel-control" href="#myCarousel"
										data-slide="next"> <span
										class="glyphicon glyphicon-chevron-right"></span> <span
										class="sr-only">Next</span>
									</a>
								</div>


								<h2>QR Code for your mobile device</h2>
								<div class="background-white p20">
									<!-- Nav tabs -->
									<ul id="listing-detail-location" class="nav nav-tabs"
										role="tablist">
										<li>
											<!-- <div id="qrcodeTable"></div> -->
											<div id="qrcodeCanvas"></div>
										</li>
									</ul>
									<!-- Tab panes -->
									<div class="tab-content">
										<div role="tabpanel" class="tab-pane fade in active"
											id="simple-map-panel">

											<!-- /.detail-map -->
										</div>
										<div role="tabpanel" class="tab-pane fade"
											id="street-view-panel"></div>
									</div>
								</div>

								<h2>Video</h2>
								<div class="detail-video">
									<iframe src="${HOTEL.videolink}" width="653" height="366" frameborder="0"
										webkitallowfullscreen="" mozallowfullscreen=""
										allowfullscreen=""></iframe>
								</div>
								<!-- /.detail-video -->

								<h2 id="reviews">All Reviews</h2>
								<div class="reviews">
								<c:forEach items="${REVIEWS}" var="custReview">
									<div class="review">
										<div class="review-image">
											<img src="" alt="">
										</div>
										<!-- /.review-image -->
										
										<div class="review-inner">
											<div class="review-title">
												<h2><c:out value="${custReview.userName}"/></h2>

												<span class="report"> <span class="separator">•</span><i
													class="fa fa-flag" title="" data-toggle="tooltip"
													data-placement="top" data-original-title="Report"></i>
												</span>

												<div class="review-overall-rating">
													<span class="overall-rating-title">Total Score:</span>
													<c:forEach var = "i" begin = "1" end = "5">
													  <c:choose>
													  	<c:when test="${custReview.rvwOverall >= i}">
													  	<i class="fa fa-star"></i>
													  	</c:when>
													  	<c:otherwise>
													  		<i class="fa fa-star-o"></i>
													  	</c:otherwise>
													  </c:choose>
													</c:forEach>
												</div>
												<!-- /.review-rating -->
											</div>
											<!-- /.review-title -->

											<div class="review-content-wrapper">
												<div class="review-content">
													<div class="review-pros">
														<p>${custReview.rvwCommentsPros}</p>
													</div>
													<!-- /.pros -->
													<div class="review-cons">
														<p>${custReview.rvwCommentsCons}</p>
													</div>
													<!-- /.cons -->
												</div>
												<!-- /.review-content -->

												<div class="review-rating">
													<dl>
														<dt>Location</dt>
														<dd>
															<c:forEach var="i" begin="1" end="5">
																<c:choose>
																	<c:when test="${custReview.rvwLocation >= i}">
																		<i class="fa fa-star"></i>
																	</c:when>
																	<c:otherwise>
																		<i class="fa fa-star-o"></i>
																	</c:otherwise>
																</c:choose>
															</c:forEach>
														</dd>
														<dt>Money</dt>
														<dd>
															<c:forEach var="i" begin="1" end="5">
																<c:choose>
																	<c:when test="${custReview.rvwMoney >= i}">
																		<i class="fa fa-star"></i>
																	</c:when>
																	<c:otherwise>
																		<i class="fa fa-star-o"></i>
																	</c:otherwise>
																</c:choose>
															</c:forEach>
														</dd>
														<dt>Food</dt>
														<dd>
															<c:forEach var="i" begin="1" end="5">
																<c:choose>
																	<c:when test="${custReview.rvwFood >= i}">
																		<i class="fa fa-star"></i>
																	</c:when>
																	<c:otherwise>
																		<i class="fa fa-star-o"></i>
																	</c:otherwise>
																</c:choose>
															</c:forEach>
														</dd>
														<dt>Staff</dt>
														<dd>
															<c:forEach var="i" begin="1" end="5">
																<c:choose>
																	<c:when test="${custReview.rvwStaff >= i}">
																		<i class="fa fa-star"></i>
																	</c:when>
																	<c:otherwise>
																		<i class="fa fa-star-o"></i>
																	</c:otherwise>
																</c:choose>
															</c:forEach>
														</dd>
														<dt>Cleanness</dt>
														<dd>
															<c:forEach var="i" begin="1" end="5">
																<c:choose>
																	<c:when test="${custReview.rvwCleaness >= i}">
																		<i class="fa fa-star"></i>
																	</c:when>
																	<c:otherwise>
																		<i class="fa fa-star-o"></i>
																	</c:otherwise>
																</c:choose>
															</c:forEach>
														</dd>
														<dt>Service</dt>
														<dd>
															<c:forEach var="i" begin="1" end="5">
																<c:choose>
																	<c:when test="${custReview.rvwService >= i}">
																		<i class="fa fa-star"></i>
																	</c:when>
																	<c:otherwise>
																		<i class="fa fa-star-o"></i>
																	</c:otherwise>
																</c:choose>
															</c:forEach>
														</dd>
													</dl>
												</div>
												<!-- /.review-rating -->
											</div>
											<!-- /.review-content-wrapper -->

										</div>
										<!-- /.review-inner -->
										</div>
										</c:forEach>
									</div>
									<!-- /.review -->

									

							</div>
							<!-- /.col-sm-7 -->

							<div class="col-sm-5">

								<div class="background-white p20">
									<!-- <div class="detail-overview-hearts">
										<i class="fa fa-heart"></i> <strong>213 </strong>people love
										it
									</div> -->
									<div class="detail-overview-rating">
										<i class="fa fa-star"></i> <strong>${REVIEWS_AVG} / 5 </strong>from <a
											href="">${REVIEWS_COUNT} reviews</a>
									</div>

									<div class="detail-actions row">
										<div class="col-sm-4">
											<div class="btn btn-primary btn-book">
												<i class="fa fa-shopping-cart"></i> Book Now
											</div>
										</div>
										<!-- /.col-sm-4 -->
										<div class="col-sm-4"></div>
										<!-- /.col-sm-4 -->
										<div class="col-sm-4"></div>
										<!-- /.col-sm-4 -->
									</div>
									<!-- /.detail-actions -->
								</div>

								<h2>
									About <span class="text-secondary">${hotel.hotelName}</span>
								</h2>
								<div class="background-white p20">
									<div class="detail-vcard">
										<div class="detail-logo">
											<img src="">
										</div>
										<!-- /.detail-logo -->

										<div class="detail-contact">
											<div class="detail-contact-email">
												<i class="fa fa-envelope-o"></i> <a href="mailto:#">company@example.com</a>
											</div>
											<div class="detail-contact-phone">
												<i class="fa fa-mobile-phone"></i> <a href="tel:#">+01-23-456-789</a>
											</div>
											<div class="detail-contact-website">
												<i class="fa fa-globe"></i> <a href="">www.superlist.com</a>
											</div>
											<div class="detail-contact-address">
												<i class="fa fa-map-o"></i> 347/26 22nd Avenue<br> NYC
												AZ 85705, USA
											</div>
										</div>
										<!-- /.detail-contact -->
									</div>
									<!-- /.detail-vcard -->

									<div class="detail-description">
										<p>${HOTEL.detailedDesc}</p>
									</div>


								</div>


								<h2>Amenities</h2>

								<div class="background-white p20">
									<ul class="detail-amenities">
										<li class="yes">WiFi</li>
										<li class="yes">Parking</li>
										<li class="no">Vine</li>
										<li class="yes">Terrace</li>
										<li class="no">Bar</li>
										<li class="yes">Take Away Coffee</li>
										<li class="no">Catering</li>
										<li class="yes">Raw Food</li>
										<li class="no">Delivery</li>
										<li class="yes">No-smoking room</li>
										<li class="no">Reservations</li>
									</ul>
								</div>
								<!-- /.detail-amenities -->


							</div>


						</div>
						<!-- /.col-sm-5 -->

						<div class="col-sm-12">
							<h2>Submit a Review</h2>

							<form class="background-white p20 add-review" method="post"
								action="<spring:url value="submit-reviews"/>">
								
								

								<div class="row">
									<div class="form-group input-rating col-sm-3">
										<div class="rating-title">Location</div>

										<input type="radio" value="1" name="location" id="rating-location-1">
										<label for="rating-location-1"></label> <input type="radio"
											value="2" name="location" id="rating-location-2"> <label
											for="rating-location-2"></label> <input type="radio" value="3"
											name="location" id="rating-location-3"> <label
											for="rating-location-3"></label> <input type="radio" value="4"
											name="location" id="rating-location-4"> <label
											for="rating-location-4"></label> <input type="radio" value="5"
											name="location" id="rating-location-5"> <label
											for="rating-location-5"></label>

									</div>
									<div class="form-group input-rating col-sm-3">
										<div class="rating-title">Money</div>

										<input type="radio" value="1" name="money" id="rating-money-1">
										<label for="rating-money-1"></label> <input type="radio"
											value="2" name="money" id="rating-money-2"> <label
											for="rating-money-2"></label> <input type="radio" value="3"
											name="money" id="rating-money-3"> <label
											for="rating-money-3"></label> <input type="radio" value="4"
											name="money" id="rating-money-4"> <label
											for="rating-money-4"></label> <input type="radio" value="5"
											name="money" id="rating-money-5"> <label
											for="rating-money-5"></label>

									</div>
									<div class="form-group input-rating col-sm-3">
										<div class="rating-title">Food</div>

										<input type="radio" value="1" name="food" id="rating-food-1">
										<label for="rating-food-1"></label> <input type="radio"
											value="2" name="food" id="rating-food-2"> <label
											for="rating-food-2"></label> <input type="radio" value="3"
											name="food" id="rating-food-3"> <label
											for="rating-food-3"></label> <input type="radio" value="4"
											name="food" id="rating-food-4"> <label
											for="rating-food-4"></label> <input type="radio" value="5"
											name="food" id="rating-food-5"> <label
											for="rating-food-5"></label>

									</div>
								</div>
								<div class="row">
									<!-- /.col-sm-3 -->
									<div class="form-group input-rating col-sm-3">

										<div class="rating-title">Staff</div>

										<input type="radio" value="1" name="staff" id="rating-staff-1">
										<label for="rating-staff-1"></label> <input type="radio"
											value="2" name="staff" id="rating-staff-2"> <label
											for="rating-staff-2"></label> <input type="radio" value="3"
											name="staff" id="rating-staff-3"> <label
											for="rating-staff-3"></label> <input type="radio" value="4"
											name="staff" id="rating-staff-4"> <label
											for="rating-staff-4"></label> <input type="radio" value="5"
											name="staff" id="rating-staff-5"> <label
											for="rating-staff-5"></label>

									</div>
									<!-- /.col-sm-3 -->
									<div class="form-group input-rating col-sm-3">

										<div class="rating-title">Cleaness</div>

										<input type="radio" value="1" name="cleaness" id="rating-cleaness-1">
										<label for="rating-cleaness-1"></label> <input type="radio"
											value="2" name="cleaness" id="rating-cleaness-2"> <label
											for="rating-cleaness-2"></label> <input type="radio" value="3"
											name="cleaness" id="rating-cleaness-3"> <label
											for="rating-cleaness-3"></label> <input type="radio" value="4"
											name="cleaness" id="rating-cleaness-4"> <label
											for="rating-cleaness-4"></label> <input type="radio" value="5"
											name="cleaness" id="rating-cleaness-5"> <label
											for="rating-cleaness-5"></label>

									</div>
									<!-- /.col-sm-3 -->
									<div class="form-group input-rating col-sm-3">

										<div class="rating-title">Service</div>

										<input type="radio" value="1" name="service"
											id="rating-service-1"> <label
											for="rating-service-1"></label> <input type="radio"
											value="2" name="service" id="rating-service-2">
										<label for="rating-service-2"></label> <input type="radio"
											value="3" name="service" id="rating-service-3">
										<label for="rating-service-3"></label> <input type="radio"
											value="4" name="service" id="rating-service-4">
										<label for="rating-service-4"></label> <input type="radio"
											value="5" name="service" id="rating-service-5">
										<label for="rating-service-5"></label>

									</div>
									<!-- /.col-sm-3 -->
								</div>
								<!-- /.row -->

								<div class="row">
									<div class="form-group col-sm-6">
										<label for="">Pros</label><span class="required">*</span>
										<textarea class="form-control" rows="5" id="" name="comments-pros" required></textarea>
										<div class="textarea-resize"></div>
									</div>
									<!-- /.col-sm-6 -->
									<div class="form-group col-sm-6">
										<label for="">Cons</label><span class="required">*</span>
										<textarea class="form-control" rows="5" id="" name="comments-cons" required></textarea>
										<div class="textarea-resize"></div>
										<input type="hidden" name="hotelCode" value="${sessionScope.HOTEL.hotelCode}"/>
									</div>
									<!-- /.col-sm-6 -->

									<div class="col-sm-8">
										<p>
											Required fields are marked <span class="required">*</span>
										</p>
									</div>
									<!-- /.col-sm-8 -->
									<div class="col-sm-4">
										<button class="btn btn-primary btn-block" type="submit">
											<i class="fa fa-star"></i>Submit Review
										</button>
									</div>
									<!-- /.col-sm-4 -->
								</div>
								<!-- /.row -->
							</form>
						</div>
						<!-- /.col-* -->
					</div>
					<!-- /.row -->

				</div>
				<!-- /.container -->

			</div>
			<!-- /.content -->
		</div>
		<!-- /.main-inner -->

	<!-- /.main -->

	<footer class="footer">
		<div class="footer-bottom">
			<div class="container">
				<div class="footer-bottom-left">
					<a>© 2017 All rights reserved. Created by MindBenders</a>.
				</div>
			</div>
			<!-- /.container -->
		</div>
	</footer>
	<!-- /.footer -->
</div>

	<!-- /.page-wrapper -->



	<script
		src="<spring:url value="/static/admin/plugins/jQuery/jQuery-2.1.4.min.js"/>"
		type="text/javascript"></script>
	<script
		src="<spring:url value="/static/admin/bootstrap/js/bootstrap.min.js"/>"
		type="text/javascript"></script>
	<script
		src="<spring:url value="/static/admin/bootstrap/js/carousel.js"/>"
		type="text/javascript"></script>
	<script type="text/javascript"
		src="<spring:url value="/static/admin/js/jquery.qrcode.js"/>"></script>
	<script type="text/javascript"
		src="<spring:url value="/static/admin/js/qrcode.js"/>"></script>
	<script>
	var context = location.href.substring(0, location.href.indexOf('${pageContext.request.contextPath}'));
	var qrpath = context+"${sessionScope.QRCODE_URL}";
	console.log(qrpath);
		jQuery('#qrcodeCanvas').qrcode({
			text : qrpath
		});	
	</script>


	<div id="cboxOverlay" style="display: none;"></div>
	<div id="colorbox" class="" role="dialog" tabindex="-1"
		style="display: none;">
		<div id="cboxWrapper">
			<div>
				<div id="cboxTopLeft" style="float: left;"></div>
				<div id="cboxTopCenter" style="float: left;"></div>
				<div id="cboxTopRight" style="float: left;"></div>
			</div>
			<div style="clear: left;">
				<div id="cboxMiddleLeft" style="float: left;"></div>
				<div id="cboxContent" style="float: left;">
					<div id="cboxTitle" style="float: left;"></div>
					<div id="cboxCurrent" style="float: left;"></div>
					<button type="button" id="cboxPrevious"></button>
					<button type="button" id="cboxNext"></button>
					<button id="cboxSlideshow"></button>
					<div id="cboxLoadingOverlay" style="float: left;"></div>
					<div id="cboxLoadingGraphic" style="float: left;"></div>
				</div>
				<div id="cboxMiddleRight" style="float: left;"></div>
			</div>
			<div style="clear: left;">
				<div id="cboxBottomLeft" style="float: left;"></div>
				<div id="cboxBottomCenter" style="float: left;"></div>
				<div id="cboxBottomRight" style="float: left;"></div>
			</div>
		</div>
		<div
			style="position: absolute; width: 9999px; visibility: hidden; display: none; max-width: none;"></div>
	</div>
</body>
</html>