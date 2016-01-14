<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class=" juzi js flexbox no-touch opacity csstransforms3d svg" lang="">
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
	<title>说明书详细 ｜ 92说明书</title>
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="./img/favicon.png" />
	<link rel="apple-touch-icon-precomposed" href="./img/favicon.png" />
	
	<meta name="Keywords" content=" " />
	<meta name="Description" content=" " />
	
	<link rel="stylesheet" type="text/css" href="css/common/common.css" />
	<link rel="stylesheet" type="text/css" href="css/common/fontawesome.css" />
	<link rel="stylesheet" type="text/css" href="css/pages/details.css" />
	<script>
	  window.site_url = 'https://92shuomingshu.com/';
	</script>  
	 
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/lib/jquery/jquery.min.js"></script>
    <script src="js/lib/bootstrap/bootstrap.min.js"></script>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/lib/others/ie10-viewport-bug-workaround.js"></script>
    <script src="js/lib/angular/angular.js"></script>
    <script src="js/lib/angular/angular-cookies.min.js"></script>
    <script src="js/app.js"></script>
	<script src="js/controllers/DetailsController.js"></script>
	<script src="js/service/UserService.js"></script>	
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body ng-app="app" ng-controller="DetailsController" class=""> 
	<div class="none">
	  <img src="./img/favicon.png" />
	</div> 
	<!--[if lt IE 10]>
	       <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	   <![endif]--> 
	<div class="contentwrap"> 
		<%@ include file="../common/header.jsp" %>	
		<div class="boxed"> 
			<div class="sidebar right">
				<div class="sec">
					<div class="titlebar"><span>最热说明书</span><a href="" class="right-btn flr">查看所有</a></div>
			    	<div>
				    	<ul class="list-link-lite TOP">
				           <li>
					          <a href="" target="_blank">海尔液晶电视说明书 <span class="flr">6250</span></a>
					       </li>
				           <li>
					          <a href="" target="_blank">TCL液晶电视说明书 <span class="flr">5771</span></a>
					       </li>
					       <li>
					          <a href="" target="_blank">海尔液晶电视说明书 <span class="flr">6250</span></a>
					       </li>
					       <li>
					          <a href="" target="_blank">TCL液晶电视说明书 <span class="flr">5771</span></a>
					       </li>       
					       <li>
					          <a href="" target="_blank">海尔液晶电视说明书 <span class="flr">6250</span></a>
					       </li>
					       <li>
					          <a href="" target="_blank">TCL液晶电视说明书 <span class="flr">5771</span></a>
					       </li>       
						</ul>
			    	</div>
			</div>  
		</div>
		
			<div class="main">
			  <div class="sec height-292">
			    <div class="titlebar">
			      <span ng-bind="handbook.name"><i class="fa fa-th"></i></span>
			      <div class="rightset">
			          <a class="t-small" href=""><i class="fav-star" ng-class="{true: 'fa fa-star', false: 'fa fa-star-o'}[handbook.favor == true]" ng-click="addFavorite(user.id, handbook)"></i></a>
			        </div>
			          </div>
			             <div>
			                <ul class="list-block aboutus">
			                  <li>
			                    <i class="fa fa-dot-circle-o"></i>厂商： 
			                    <a ng-href="/result?key={{handbook.brand}}" ng-bind="handbook.brand"></a>
			                  </li>
			                  <li>
			                    <i class="fa fa-newspaper-o"></i>上架时间： 
			                    <a href="" ng-bind="handbook.productDate | date:'yyyy-MM-dd'"></a>
			                  </li>
			                  <li>
			                    <i class="fa fa-phone"></i>官方客服电话： 
			                    <a href="tel:02885303320" ng-repeat="s in services " ng-bind="s.tel"> </a>
			                  </li>
			                
			                  <li>
			                    <i class="fa fa-envelope"></i>官方邮箱： 
			                    <a href="mailto:jack@92shuomingshu.com" ng-repeat="s in services " ng-bind="s.email"> </a>
			                  </li>
			                
			                  <li>
			                    <i class="fa fa-map-marker"></i>官方网站： 
			                    <span ng-repeat="s in services" ng-bind="s.site"> </span>
			                  </li>
			                  <li>
			                    <i class="fa fa-map-marker"></i>浏览次数： 
			                    <span  ng-bind="handbook.viewCount"> </span>
			                  </li>
			                  <li>
			                    <i class="fa fa-map-marker"></i>下载次数： 
			                    <span ng-bind="handbook.downloadCount"> </span>
			                  </li>
			                  <li>
			                    <i class="fa fa-map-marker"></i>收藏次数： 
			                    <span ng-bind="handbook.favorCount"> </span>
			                  </li>
			                </ul>
			                <div class="pl-mt20 margin-20 d-b">
			                  <a class="wmanualbtn" href="">在线阅读</a>
			                  <a class="wmanualbtn" href="#" ng-click="download()">下载PDF</a> 
			                </div>
			    </div>
			  </div>
			</div>
			
		</div>
		<%@ include file="../common/footer.jsp" %>
		<div class="ui-maintoolbar-box"> 
		  <div class="ui-maintoolbar"> 
		    <a class="card hoverc scroll2top"> 
		      <span class="t-big"> <i class="fa fa-chevron-up"></i> </span> 
		    </a> 
		    <a class="card hoverc scroll2bottom marb5"> 
		      <span class="t-big"> <i class="fa fa-chevron-down"></i> </span> 
		    </a> 
		    <a href="" target="_blank" class="card hovertext"> 
		      <span> <i class="fa fa-mobile t-big"></i> <span class="text t-small">APP</span> </span> 
		    </a> 
		    <a class="card hoverc"> 
		      <span> <i class="fa fa-qrcode t-big"></i> </span> 
		      <span class="left-qrcode"> <img src="./img/qrcode-juzi.png" /> 
		        <span class="c-gray t-small">92说明书公众号</span>  
		      </span> 
		    </a> 
		    <a href="" target="_blank" class="card hovertext"><span class="t-small">反馈</span></a> 
		  </div> 
		 </div>
		
		 
	</div>
	<script src="js/lib/others/modernizr.js"></script>
	<script>
	  window.site_url = 'https://92shuomingshu.com/';
	</script> 
</body>
</html>