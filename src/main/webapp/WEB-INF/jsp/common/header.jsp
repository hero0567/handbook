<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<header  ng-app="app" ng-controller="HeaderController"> 
			<div> 
				 <div class="navbox"> 
					  <div class="boxed"> 
						   <a class="logo fll" href="/"> <h1 class="seeo">92说明书</h1> </a> 
						
						   <ul class="mainnav"> 
						    <li class="tab on"> 
						        <a href="/">首页 </a> 
						    </li>
						   </ul> 
						   
						   <div class="usernav"> 
							    <div class="usersearch"> 
								     <form ng-submit="search()"> 
								      	<input type="text" ng-model="$parent.key" spellcheck="false" autocomplete="off" placeholder="请输入搜索关键字" /> 
								      	<button class="wmanualbtn bg-c" type="submit"><i class="fa fa-search"></i></button> 
								     </form> 
							    </div> 
							    <div class="useradd"> 
								     <a href="http://www.92shuomingshu.com" title="92shuomingshu" rel="sidebar"><span class="wmanualbtn c-lined">
								      	<i class="fa fa-plus"></i> 添加搜藏</span>
								     </a> 
							    </div> 
							    <!-- 未登录 --> 
							    <div class="userlogin" ng-show="!user.id"> 
							     	<a class="wmanualbtn" href="/signin">登录</a>
							     	<a class="wmanualbtn" href="/signup">注册</a> 
							    </div> 
							    <div class="userlogin" ng-show="user.id"> 
							     	<!-- <a class="wmanualbtn" href="/signin">已登录{{user.username}}</a> -->
							     	
							     	<div class="usermenu hoversub">
                                        <a href="" title="进入个人中心">{{user.username}}</a>
                                      	<a><img src="img/user.png"></a>
                                        <div class="subblock">
                                            <ul class="list-dropdown-menu">
                                                <li><a href="/favorites">我的收藏</a></li>
                                                <li><a href="" ng-click="logout()">退出</a></li>
                                            </ul>
                                        </div>
                                    </div>
							     	
							    </div> 
						   </div> 
			  </div> 
		 </div> 
		 <div class="subnavbox"> 
			  <div class="boxed"> 
				   <div class="cont"> 
					    <ul class="subnav nav-comp"> 
					    	<li ng-repeat="m in menu | orderBy: 'sequence'"><a href="" ng-click="changeMenu(m.subType, m.count)" ng-class="{on: m.subType == page.subtype}"><span>{{m.subType}}</span><i>{{m.count}}</i></a></li>
					    </ul> 
				   </div> 
			  </div> 
		 </div> 
	</div> 
</header> 
<script src="js/controllers/HeaderController.js"></script>