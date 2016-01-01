<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html id="signup-page" class="page-signup page-signup--standard">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>登录</title>
  <link rel="icon" href="/images/favicon.ico" />
  <link rel="stylesheet" type="text/css" href="./css/signup.css">
  <meta name="csrf-param" content="authenticity_token" />
  <meta name="csrf-token" content="F/4T5TLAfL1CuyCwaqDrE5iXQz/aTu/6MBVldrfd1Ijjk3oxld8jibDZC/XBoxZ07YNxZiA7ixzvGLUW6uMrZA==" />

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
 
</head>
<body>
  <div class="full-w-h-container vertical-center-container v-90-percent">
    <section class="signup-section vertical-center-content">
      <br><br><br><br>
      <section id="content-box" class="signup-box original-signup-box vertical-center-container" style="float:none">
        <section class="vertical-center-content">
          <div id="signup-form">
            <form class="signup_form" accept-charset="UTF-8" action="" method="post">
              <input name="account[terms_accepted]" type="hidden" value="1">

              <div class="email-section">
                <input class="account_email form-input" placeholder="用户名" name="account[email]" type="email" required="required" id="signup-email">
                <div class="suggestion x-small">您确定 <span class="suggestion-link"></span>?</div>
                <img class="sad-face" src="img/error.png">
                <img class="positive-tick" src="img/correct.png">
              </div>

              <div class="password-section">
                <input class="account_password form-input" placeholder="密码" name="account[password]" type="password" required="required" id="signup-password">
                <img class="sad-face" src="img/error.png">
                <img class="positive-tick" src="img/correct.png">
              </div>

              <button class="btn medium-large btn-block btn-cta primary" type="submit">登录</button>
            </form>

            <div class="divider-container">
              <div class="divider"></div>
              <div class="divider-text">或者使用第三方登录</div>
            </div>
            <a href="">
              <div class="github-button social-button x-small"><i class="fa fa-github"></i>QQ</div>
            </a>
            <a href="">
              <div class="google-button social-button x-small"><i class="fa fa-google"></i>微博</div>
            </a>
          </div>
        </section>
      </section>
    </section>
  </div>
</body>
</html>
