<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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

<title>DamWeb - Login</title>
<body class="">

	<div class="page-wrapper">

		<header class="header">
			<div class="header-wrapper">
				<div class="container">
					<div class="header-inner">
						<div class="header-logo">
							<a href="<spring:url value="/"/>" <img src="" alt="Logo"> <span>DamWeb</span>
							</a>
						</div>
						<!-- /.header-logo -->

						<div class="header-content">
							<div class="header-top">
								<div class="header-search"></div>
								<!-- /.header-search -->

								<ul class="header-nav-social social-links nav nav-pills">

								</ul>
								<!-- /.header-nav-social -->

								<ul class="header-nav-secondary nav nav-pills">

								</ul>
							</div>
							<!-- /.header-top -->

							<div class="header-bottom">

								<ul
									class="header-nav-primary nav nav-pills collapse navbar-collapse">

									<li><a
										href="">Admin
											<i class="fa fa-chevron-down"></i>
									</a>

										<ul class="sub-menu">
											<li><a
												href="">Dashboard</a></li>
										</ul></li>
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
				<div class="container">
					<div class="content">



						<div class="row">
							<div class="col-sm-4 col-sm-offset-4">
								<div class="page-title">
									<h1>Login</h1>
								</div>
								<!-- /.page-title -->

								<sf:form action="dashboard" method="post" commandName="userBean">
									<div class="form-group">
										<label for="login-form-email">Username</label>
										<sf:input path="userName" id="txtusername" cssClass="form-control" placeholder="Username"/>
									</div>
									<!-- /.form-group -->

									<div class="form-group">
										<label for="login-form-password">Password</label>
										<sf:password path="password" id="txtpassword" class="form-control" placeholder="Password"/>
									</div>
									<!-- /.form-group -->

									<button type="submit" class="btn btn-primary pull-right">Login</button>
								</sf:form>
							</div>
							<!-- /.col-sm-4 -->
						</div>
						<!-- /.row -->

					</div>
					<!-- /.content -->
				</div>
				<!-- /.container -->
			</div>
			<!-- /.main-inner -->
		</div>
		<!-- /.main -->

		<footer class="footer">
			<div class="footer-bottom">
				<div class="container">
					<div class="footer-bottom-left">
						@ 2017 All rights reserved. Created by MindBenders</a>.
					</div>
					<!-- /.footer-bottom-left -->
				</div>
				<!-- /.container -->
			</div>
		</footer>
		<!-- /.footer -->

	</div>
	<!-- /.page-wrapper -->


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