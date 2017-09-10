<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <link href="<spring:url value="/static/admin/css/hotel.css"/>" rel="stylesheet" type="text/css" />
    <link href="<spring:url value="/static/admin/dist/css/skins/_all-skins.min.css"/>" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script>
    	var _ctx='${pageContext.request.contextPath}';
    </script>
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
          <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Review List</h3>

              <div class="box-tools">
                <div class="input-group input-group-sm" style="width: 150px;">
                  <input type="text" name="table_search" class="form-control pull-right" placeholder="Search">

                  <div class="input-group-btn">
                    <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                  </div>
                </div>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tr>
                  <th>HOTEL CODE</th>
                  <th>User</th>
                  <th>Date</th>
                  <th>Status</th>
                  <th>Reason</th>
                </tr>
                <c:forEach items="${reviewList}" var="review">
                <tr>
                  <td>${review.hotelName}</td>
                  <td>${review.userName}</td>
                  <td>${review.rvwDate}</td>
                  <td>
                  <c:choose>
                  	<c:when test="${review.rvwState == 'PENDING'}">
                  		<span id="rspi${review.reviewId}" class="label label-warning" onclick="javascript:updateReviewById('${review.reviewId}','A');">Approve</span>
                  		<span id="rspii${review.reviewId}" class="label label-danger" onclick="javascript:updateReviewById('${review.reviewId}','D');">Reject</span>
                  	</c:when>
                  	<c:when test="${review.rvwState == 'A'}">
                  		<span id="rspi${review.reviewId}" class="label label-success">Approved</span>
                  		<span id="rspii${review.reviewId}" class="label label-danger" onclick="javascript:updateReviewById('${review.reviewId}','D');">Reject</span>
                  	</c:when>
                  	<c:otherwise>
                  		<span class="label label-danger">Rejected</span>
                  	</c:otherwise>
                  </c:choose>
                  </td>
                  <td>Admin comments</td>
                </tr>
                </c:forEach>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
      </div>

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
  </body>
</html>