<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="UTF-8"/>
    <title>Log in</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'/>
    <!-- Bootstrap 3.3.4 -->
    <link href="<spring:url value="/static/admin/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="<spring:url value="/static/admin/bootstrap/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="<spring:url value="/static/admin/css/uberotel.css"/>" rel="stylesheet" type="text/css" />
    
  </head>
  <body class="login-page">
    <div class="login-box">
      <div class="login-box-body">
        <p class="login-box-msg">Login</p>
        <sf:form action="dashboard" method="post" commandName="userBean">
          <div class="form-group has-feedback">
            <sf:input path="userName" id="txtusername" cssClass="form-control" placeholder="Username" required/>
          </div>
          <div class="form-group has-feedback">
            <sf:password path="password" id="txtpassword" class="form-control" placeholder="Password" required/>
          </div>
          <div class="row">
            <!-- /.col -->
            <div class="col-xs-3"></div>
            <div class="col-xs-6">
              <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
            </div>
            <div class="col-xs-3"></div><!-- /.col -->
          </div>
        </sf:form>
      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->
    <script
		src="<spring:url value="/static/admin/plugins/jQuery/jQuery-2.1.4.min.js"/>"
		type="text/javascript"></script>
	<script
		src="<spring:url value="/static/admin/bootstrap/js/bootstrap.min.js"/>"
		type="text/javascript"></script>
  </body>
</html>