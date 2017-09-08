<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.4 -->
    <link href="<spring:url value="/static/admin/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="<spring:url value="/static/admin/css/uberotel.css"/>" rel="stylesheet" type="text/css" />
    <link href="<spring:url value="/static/admin/dist/css/skins/_all-skins.min.css"/>" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
  <body class="skin-green layout-top-nav">
    <div class="wrapper">

      <jsp:include page="../common/admin/adHeader.jsp"/>
      <!-- Full Width Column -->
      <div class="content-wrapper">
        <div class="container">
          <!-- Content Header (Page header) -->
          <section class="content-header">
            <h1>
             Admin Dashboard
              <small></small>
            </h1>
            <ol class="breadcrumb">
              <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
              <li class="active">Dashboard</li>
            </ol>
          </section>

          <!-- Main content -->
          <section class="content">
          

<p>Render in table</p>
<div id="qrcodeTable"></div>
<p>Render in canvas</p>
<div id="qrcodeCanvas"></div>

          </section><!-- /.content -->
        </div><!-- /.container -->
      </div><!-- /.content-wrapper -->
    </div><!-- ./wrapper -->
	<jsp:include page="../common/admin/adFooter.jsp"/>
    <!-- jQuery 2.1.4 -->
    <script src="<spring:url value="/static/admin/plugins/jQuery/jQuery-2.1.4.min.js"/>"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="<spring:url value="/static/admin/bootstrap/js/bootstrap.min.js"/>" type="text/javascript"></script>
    <script src="<spring:url value="/static/admin/dist/js/app.min.js"/>" type="text/javascript"></script>
    <script src="<spring:url value="/static/admin/js/dashboard.js"/>" type="text/javascript"></script>
    <script type="text/javascript" src="<spring:url value="/static/admin/js/jquery.qrcode.js"/>"></script>
	<script type="text/javascript" src="<spring:url value="/static/admin/js/qrcode.js"/>"></script>
	<script>
	//jQuery('#qrcode').qrcode("this plugin is great");
	jQuery('#qrcodeTable').qrcode({
		render	: "table",
		text	: "http://2a80fee6.ngrok.io/damweb/dashboard"
	});	
	jQuery('#qrcodeCanvas').qrcode({
		text	: "http://2a80fee6.ngrok.io/damweb/dashboard"
	});	
</script>
  </body>
</html>