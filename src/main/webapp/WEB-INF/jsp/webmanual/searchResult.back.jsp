<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html id="signup-page" class="page-signup page-signup--standard">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>搜索结果</title>

    <link href="css/custom.css" rel="stylesheet">

    <link href="css/common.css" rel="stylesheet">

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sticky-footer-navbar.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body ng-app="" ng-controller="SearchController">	
	<nav class="navbar navbar-default navbar-fixed-top">	  	
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <br>
          <a class="navbar-brand" href="#">92说明书</a>
        </div>

        <div id="navbar" class="navbar-collapse collapse" aria-expanded="false"  >
        	<br>
			<div class="row">
			  <div class="col-lg-2 col-md-2 col-sm-1 col-xs-1">
			  </div>
			  <div class="col-lg-6 col-md-8 col-sm-10 col-xs-10">
			    <div class="input-group">
			      <div class="input-group-btn">
			        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">全部 <span class="caret"></span></button>
			        <ul class="dropdown-menu">
			          <li><a href="#">电视</a></li>
			          <li><a href="#">冰箱</a></li>
			          <li><a href="#">空调</a></li>
			          <li><a href="#">洗衣机</a></li>
			          <li><a href="#">热水器</a></li>
			          <li><a href="#">净水器</a></li>
			          <li><a href="#">空气净化器</a></li>
			        </ul>
			      </div><!-- /btn-group -->
			      <input type="text" class="form-control" aria-label="...">
			      <span class="input-group-btn">
			        <button class="btn btn-default" type="button" ng-click="showMsg()">搜索</button>
			      </span>
			    </div><!-- /input-group -->
			  </div><!-- /.col-lg-6 -->
			  
			  <div class="col-lg-4 col-md-2 col-sm-1 col-xs-1">
			  </div>
			</div><!-- /.row -->

			<br>

			<ul class="row nav navbar-nav">
				<li class="active"><a href="#">电视</a></li>
				<li><a href="#about">冰箱</a></li>
				<li><a href="#about">空调</a></li>
				<li><a href="#contact">洗衣机</a></li>
				<li><a href="#about">热水器</a></li>
				<li><a href="#contact">净水器</a></li>
				<li><a href="#contact">空气净化器</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="">我的搜藏 &nbsp;<span class="badge">42</span></a></li> 
				<li><a href="">一只小牛</a></li>
			</ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    
	<div class="container">
		<h4>搜索结果：${type} -> ${key}</h4>
		<input id="type" ng-show="false"  type="text" value="${type}"/>
		<input id="key" ng-show="false"  type="text" value="${key}"/>
		<div class="row" ng-repeat="result in results">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="thumbnail">
					<img src="" alt="">
					<h4>{{result.name}}</h4>
					<p>{{result.des}}</p>
					<p><a class="btn btn-default" href="#" role="button">详细信息 »</a></p>
				</div>
			</div>
	    </div>	   
		<div class="row">
			<nav class="">
			  <ul class="pagination">
			    <li>
			      <a href="#" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			      </a>
			    </li>
			    <li><a href="#">1</a></li>
			    <li><a href="#">2</a></li>
			    <li><a href="#">3</a></li>
			    <li><a href="#">4</a></li>
			    <li><a href="#">5</a></li>
			    <li>
			      <a href="#" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			      </a>
			    </li>
			  </ul>
			</nav>
		</div>
	</div> 


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery-1.10.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="./js/ie10-viewport-bug-workaround.js"></script>
    <script src="js/lib/angular/angular.js"></script>
	<script src="js/controllers/SearchController.js"></script>
	<script src="js/lib/jquery/jquery.min.js"></script>
	
	

</body>
</html>