<%@ include file="/webapis/ui/doctype.jspf" %>

<%@ taglib uri="/bbNG" prefix="bbNG" %>
<%@ taglib uri="/bbUI" prefix="bbUI" %>
<%@ taglib uri="/loginUI" prefix="loginUI" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<bbNG:genericPage bodyClass="responsive-login-page" authentication="N" wrapper="false" globalNavigation="false">

<%@ include file="/webapis/ui/cookie-disclosure-login.jspf"%>

<loginUI:errorMessage />
 
<div class="site-container">
  <!-- Navigation -->
  <nav class="navbar navbar-inverse " role="navigation">
      <div class="container">
         <div class="row">
            <div class="col-lg-12 ">
               <!-- Brand and toggle get grouped for better mobile display -->
               <div class="navbar-header">
                  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  </button>
                  <a class="navbar-brand" href="https://continuinged.uml.edu/"><img src="/bbcswebdav/library/login/uml/images/uml-logo.gif" class="logo"/></a>
                  <a class="oce" href="https://continuinged.uml.edu/"><img src="/bbcswebdav/library/login/uml/images/oce-logo.png" alt="Division of Online & Continuing Education"/></a>
                  <a class="oce-small" href="https://continuinged.uml.edu/"><img src="/bbcswebdav/library/login/uml/images/oce-small.png" alt="Division of Online & Continuing Education"/></a>
                  <!--<a href="http://continuinged.uml.edu" class="oce">Division of Online &<br/>Continuing Education</a>-->
               </div>
               <!-- Collect the nav links, forms, and other content for toggling -->
               <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                  <ul class="nav navbar-nav">
                     <li>
                        <a href="https://continuinged.uml.edu/general/advising.cfm">Advising</a>
                     </li>
                     <li>
                        <a href="https://continuinged.uml.edu/general/calendar.cfm" >Academic Calendar</a>
                     </li>
                     <li>
                        <a href="https://continuinged.uml.edu/" >Online and Continuing Ed</a>
                     </li>
                  </ul>
               </div>
            </div>
         </div>
         <!-- /.navbar-collapse -->
      </div>
      <!-- /.container -->
  </nav>
  <div class="hero">
    <img src="/bbcswebdav/library/login/uml/images/hero.jpg" class="aspect-holder"/>
    <div class="container">
       <div class="row">
          <div class="col-xs-5">
             <div class="hero-text">
                <h1>
                   Online Learning<br/>with Blackboard
                </h1>
                <div class="hero-text-one">
                   <p>Use your UMass Lowell <b>email address</b> and <b>password</b> to log into your online course(s) in Blackboard.</p>
                   <p class="announce">Login is made available on the first day of class.</p> 
                   <a href="#" class="login" id="ssoLoginLink">Log into Blackboard </a>
                   <p>Forgot your password? <a href="https://mypassword.uml.edu/">Click Here</a></p>
                </div>
             </div>
          </div>
          <div class="col-xs-7"></div>
       </div>
    </div>
  </div>
  
  <div class="hero-text-double">
    <div class="container">
       <div class="row">
          <div class="col-xs-8 mobile-full">
             <p>Use your UMass Lowell <b>email address</b> and <b>password</b> to log into your online course(s) in Blackboard.</p>
             <p class="announce">Login is made available on the first day of class.</p> 
          </div>
          <div class="col-xs-4 mobile-full">
             <a href="#" class="login" id="ssoLoginLinkMobile">Log into Blackboard </a>
             <p class="fpassword">Forgot your password? <a href="https://mypassword.uml.edu/">Click Here</a></p>
          </div>
       </div>
       <!-- /.row -->
    </div>
  </div>
  <div class="stripe">   
    <div class="banner">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <a class="banner-wide" href="https://continuinged.uml.edu/catalog/search/?sem=0&yr=2018&sm=Summer"><img src="/bbcswebdav/library/login/uml/images/summer-banner-2018.jpg"></a> 
            <a class="banner-tall" href="https://continuinged.uml.edu/catalog/search/?sem=0&yr=2018&sm=Summer"><img src="/bbcswebdav/library/login/uml/images/summer-banner-tall-2018.jpg"></a>
          </div>
        </div>
      </div>
    </div> 
    <div class="container ">
      <div class="row">
        <div class="col-md-4">
          <div class="icon new-login">
            <h2>New Login Process</h2>
            Faculty and students will now use their UMass Lowell email address and password to log into their online courses.
          </div>
        </div>
        <div class="col-md-4">
          <div class="icon tech-req">
            <h2>Technical Requirements</h2>
            Technical requirements for online courses can be reviewed on the <a href="http://continuinged.uml.edu/online/techrequire.cfm">OCE Technical Requirements Page</a>
          </div>
        </div>
        <div class="col-md-4">
          <div class="icon quick">
            <h2> Quick Start Guide</h2>
            Visit our <a href="https://continuinged.uml.edu/online/123.cfm">Getting Started</a> page for helpful info about accessing your online course.
          </div>
        </div>
      </div>
    </div>  
  </div>

  <div class="main-content">
    <!-- Page Content -->
    <div class="container ">
      <div class="row margin-b">
        <div class="col-md-5">
          <h3 class="margintop">Technical Support</h3>
          <ul>
            <li>
              For technical support visit <a href="http://uml.echelp.org/ ">http://uml.echelp.org/ </a>
            </li>
            <li>
              For help with your UML email account login credentials visit <a href="http://mypassword.uml.edu">http://mypassword.uml.edu</a>
            </li>
          </ul>
          <p>
            <h4>Phone</h4>
            Call Online and Continuing Education Technical Support at <b>(978) 934-2467</b> or <b>(800) 480-3190</b> during business hours Monday – Friday 8:30 am – 5:00 pm EST or <b>(800) 480-3190</b> during non-business hours, Monday – Friday 5:00 pm – 8:30 am EST, Sundays & Holidays
          </p>
          <p>
            <h4>Email</h4>
            <a href="mailto:onlinelearning@uml.edu">onlinelearning@uml.edu</a>
          </p>
        </div>
        <div class="col-md-7" >                     
          <div class="display-box">
            <loginUI:systemAnnouncements maxItems="5" />
          </div>
        </div>
      </div>
      <!-- /.row -->
    </div>
    <div class="container ">
      <div class="row top-b">
        <div class="col-sm-12 "> </div>
      </div>
      <div class="row footer">
        <div class="col-sm-7">
          Copyright 2018, University of Massachusetts Lowell, Division of Online and Continuing Education
        </div>
        <div class="col-sm-5">
          <ul>
            <li><a href="https://continuinged.uml.edu/">OCE Website</a></li>
            <li><a href="https://continuinged.uml.edu/general/advising.cfm">Advising</a></li>
            <li><a href="https://continuinged.uml.edu/general/calendar.cfm">Academic Calendar</a></li>
          </ul>
        </div>
      </div>
      <!-- /.row -->
    </div>
  </div>
  <!-- /.container -->
</div>

<div id="hiddenLoginContainer" style="display:none">
  <loginUI:loginForm />
</div>

<bbNG:cssBlock>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="Log into your online courses at The University of Massachusetts Lowell via the Blackboard online course management system." />
      
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800,400italic,700italic' rel='stylesheet' type='text/css'>
<link href="/bbcswebdav/library/login/uml/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
body{font-family:'Open Sans', sans-serif;letter-spacing:-.03em;font-size:16px;background:#fff;}
h1{font-size:50px;font-weight:800;letter-spacing:-.06em;line-height:45px; margin-bottom: 15px;}
h2{font-size:inherit;font-weight:700;color:#0066b2; margin: 25px 0 0; font-size: 18px;}
h3 {font-size: 14px; text-transform: uppercase; font-weight: bold; margin-bottom: 0;}
h4{font-size:inherit;font-weight:700;color:#0066b2;margin-top:35px;}
h5{font-size:18px;}
h6{text-transform:uppercase;font-weight:700;color:#f93;font-size:16px;}
.logo{position:absolute; padding: 9px; background: #fff; box-shadow:1px 1px 1px #888;top:0;left:0;z-index:2000;}
a{outline:0; color: #de7a16;}
.footer a {color: #0066b2;}
.clear{clear:both;}
.navbar{border-radius:0;}
.navbar-inverse{background:#0066b2;border: none; box-shadow:0px 1px 1px #888; z-index: 1;}
.navbar-nav{float:right;}
.navbar-brand{position:relative;margin:0;}
.navbar-inverse .navbar-nav > li > a{
  background: url("/bbcswebdav/library/login/uml/images/divider.gif") no-repeat scroll right center;
  font-size:16px;text-transform:uppercase;font-weight:600;color:#fff;outline:0;padding:20px;
}
.navbar-inverse .navbar-nav > li:last-child > a{background: none; padding-right: 0;}
hr.blue {background: #0066b2; border: 0; height: 1px; clear:both;} 
.navbar,.navbar > .container .navbar-brand,.navbar > .container-fluid .navbar-brand{margin:0;}
.get-more{cursor:hand;}
.hero{position:relative;background-position:center 58px;background-repeat:no-repeat;background-attachment:fixed;background-image:url(/bbcswebdav/library/login/uml/images/hero.jpg);-webkit-background-size:100% auto;-moz-background-size:100% auto;-o-background-size:100% auto;background-size:100% auto;}
.hero ul{font-size:20px;padding:0 0 0 27px;}
.hero-text{margin:142px 0;}
.topmargin{margin-top:100px;}
.site-container{background:#fff;position:relative;z-index:0;}
.main-content{overflow:hidden; background: #ff;}
.no-hero{padding-top:12%;}
.mbl-more,.hero-text-double,.aspect-holder{display:none;}
a.login {margin: 10px 0; display:inline-block; font-size: 24px; color: #fff; font-weight: 700; padding: 15px 60px; background: #ff9933; box-shadow:1px 1px 1px #888; text-shadow: 1px 1px 1px #dd852c;}
a.login:hover {text-decoration: none; background: #fdb56d;}
.oce {color: #fff; margin: 15px 0 0 104px; float:left;}
.oce-small {display:none; margin: 10px 0 0 67px; float:left;}
.main-content {padding-top: 30px;}
.display-box {background: #e2f1fd; padding: 25px; font-size: 14px;}
.display-box h2 {margin: 0 0 5px;}
.icon {padding: 0 0 0 94px;}
.new-login{background: url(/bbcswebdav/library/login/uml/images/icon-login.png) no-repeat 0 3px;}
.tech-req{background: url(/bbcswebdav/library/login/uml/images/icon-tech.png) no-repeat 0 3px;}
.quick{background: url(/bbcswebdav/library/login/uml/images/icon-quick.png) no-repeat 24px 2px; padding-bottom: 50px;} 
.display-box ul{margin: 0 0 17px; padding: 0;}
.display-box ul li {margin: 0 0 0 13px; padding: 0;}
.footer {font-size: 14px; margin-bottom: 30px;}
.footer ul {list-style-type: none; margin: 0; padding: 0;}
.footer ul li {display: inline-block; float:right; border-left: 1px solid #0066b2; padding: 0 0 0 10px; margin: 0 0 0 10px;}
.footer ul li:last-child {border: none;}
.stripe { background: #fff; font-size: 14px;} 
.display-box {background: #cadef9;  padding: 25px; }
h3 {font-size: 26px; text-transform: none; margin: 0 0 10px;}
h4 {color: #333; text-transform: uppercase; margin: 20px 0 0; font-size: 14px;}
#loginAnnouncements ul,  #loginAnnouncements ul li {list-style-type: none; margin: 0; padding: 0;}
#loginAnnouncements ul li {border-top: 1px solid #0066b2;}
#loginAnnouncements ul li strong{color: #0066b2;float: left;font-size: 16px;line-height: 19px;padding: 10px 0 10px; width: 70%;}
.announcementDate {background: #0066b2 none repeat scroll 0 0;color: #fff;display: block;float: right;font-size: 12px;padding: 6px;text-align: center; margin: 0 0 30px 20px; white-space: nowrap; }
.top-b {border-top: 1px solid #0066b2; margin:0 0 10px;}
#loginAnnouncements ul li p {font-size: 14px; line-height: 18px}
.site-container{background: #e2f1fd;}
#loginAnnouncements {padding: 0 20px 0 0;  height: 300px;overflow-x: hidden;overflow-y: auto;}
.margin-b {margin-bottom: 30px;}
.main-content {font-size: 14px;}
.margintop {margin-top: 25px;}
.announce {font-weight: bold; color: #cf202f;} 
.banner {padding: 35px 0;}
.banner-tall img, .banner-wide img {width: 100%; height: auto;}
.banner-tall {display:none;}
                
@media (max-width: 1650px) {
  .hero-text{margin:135px 0 86px;} 
}

@media (max-width: 1400px) {
  .hero-text{margin:82px 0 66px;}
  .oce {margin: 15px 0 0 71px;}
  .logo{width:85px;}
}

@media (max-width: 1200px) {
  .hero-text{margin:101px 0 70px;}
  .navbar-inverse .navbar-nav > li > a{font-size:14px;}
  h1 {font-size: 32px; line-height: 32px; margin-bottom: 10px;}
  .hero-text{margin:72px 0 49px;}
  a.login {font-size: 17px; padding: 8px 30px; margin: 0;}
  .oce {display:none;}
  .oce-small {display:inline-block;}
}

@media (max-width: 992px) {
  h1{font-size:37px;line-height:37px;}

  .main-content {padding-top: 20px;}
  .tech-req {padding-bottom: 6px;}
  .quick{padding-bottom: 48px; background-position: 11px 2px;}
  .hero{}
  .hero-text{margin:87px 0 99px;}
  .hero-text-double{display:block;background:#333;width:100%;color:#fff;padding:20px 0;}
  .hero-text-one {display: none;}
  .remove{display:none;}
  .add{display:inline;}
  .main-content ul{margin:0;}
  .topmargin{margin-top:60px;}
  .fpassword {font-size: 14px; margin: 10px 0 0;}
  a.login {text-shadow: 0px 0px 0px #dd852c; box-shadow: none;}
  .display-box {margin-top: 40px; padding: 0; background: transparent; }
  #loginAnnouncements {overflow: visible; height: auto;}
}

@media (max-width: 767px) {
  .oce-small {margin: 4px 0 0 34px;  }
  a.login {padding: 5px 10px;}
  h1 {font-size: 34px; line-height: 32px;}
  .aspect-holder{display:block;width:100%;height:auto;margin:-1px 0 0;}
  h2{font-size:22px;}
  .hero{background-position:right 54px;}
  .logo{padding: 5px; width:55px;}
  .hero-text{position:absolute;top:-185px;margin:10px 0 29px;}
  .footer ul li {display: inline-block; float:left; border: none; padding: 0 20px 0 0; margin: 0;}
  .navbar-inverse .navbar-toggle{background:#115384;margin-right:0;border:0;color:#0066b2;border-radius:0;}
  .navbar-inverse .navbar-toggle .icon-bar{background:#0066b2;}
  .navbar{position:fixed;z-index:3000;width:100%;top:0;}
  .site-container{padding-top:52px;}
  .mbl-more{display:block;float:right;height:32px;background:#115384;color:#f93;font-size:10px;margin:8px;padding:8px 15px 0;}
  .mbl-more:hover,.mbl-more:active,.mbl-more:focus{color:#f90;}
  .navbar-nav{width:100%;margin:20px 0 0;padding:0;}
  .navbar-inverse .navbar-nav > .active > a,.navbar-inverse .navbar-nav > .active > a:focus,.navbar-inverse .navbar-nav > .active > a:hover{background:none;}
  .navbar-inverse .navbar-nav > li{border-bottom:1px solid #8ec9f6;}
  .navbar-inverse .navbar-nav > li:last-child{border:0;}
  .navbar-inverse .navbar-nav > li:last-child > a{background:transparent;color:#fff;border:0;}
  .the-page-container{margin:15px 0;}
  .topmargin{margin-top:0;}
  .hero-text ul,.hero-text-double h1,.mblhide{display:none;}
  .navbar-inverse .navbar-nav > li > a{background: none;}
  .announcementDate{margin: 0 0 36px; width: 30%; white-space: normal;} 
  .banner-wide {display:none;}
  .banner-tall {display:block;}
}

@media (max-width: 480px) {
  .oce-small {margin: 6px 0 0 34px;  } 
  a.oce-small img {width: 90%;}
  .mobile-full {width: 100%;}
  a.login {width: 100%; text-align: center;}
  .hero{background-size:110% auto;background-image:url(/bbcswebdav/library/login/uml/images/hero.jpg);background-position:center 40px;margin:-1px 0 0;}
  body{font-size:14px;}
  .hero-text{position:static;margin:0;}
  h1{font-size:21px;line-height:19px;}
  h2{font-size:18px;}
  .hero-text-double h1{margin-top:0;}
  .aspect-holder,.mbl-hide{display:none;}
  .main-content {padding-top: 0px;}
  .quick{padding-bottom: 40px;}
}

/* BB theme overrides */
body, body.responsive-login-page { min-width: initial; }
div.container { background-color: transparent; min-height: 1px; padding: 0 15px; }
.logo { margin-top: 0; }
ol, ul { list-style: disc; }
ul { padding-left: 40px; }
.hero-text-double .container { color: #FFF; }
#loginAnnouncements h3 { display: block; font-size: 26px; text-transform: none; margin: 0 0 10px; color: #111; padding: 0; border-bottom: none; }
#loginAnnouncements ul { width: auto; }
#loginAnnouncements ul li { background: none; color: #333; text-align: left; }
#loginAnnouncements ul li:first-child {border-top: 1px solid #0066b2;}
#loginAnnouncements ul li strong, #loginAnnouncements ul li strong:first-child { color: #0066b2; font-family: inherit; font-size: 16px; }
#loginAnnouncements ul li::before, #loginAnnouncements ul li::after { box-shadow: none; }
</style>
</bbNG:cssBlock>

<bbNG:jsBlock>
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
  
  <script src="/bbcswebdav/library/login/uml/js/jquery.js"></script>

  <!-- Bootstrap Core JavaScript -->
  <script src="/bbcswebdav/library/login/uml/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="/bbcswebdav/library/login/uml/js/parallax.js"></script>
  <script>
    jQuery.noConflict();
    
    var width = jQuery(window).width();           
    if (width > 480) {
      jQuery('.hero').parallax({
        speed : 0.5
      });
    }
   
    jQuery(".announcementDate").each(function(){
      var string = jQuery(this).text().replace('(', '').replace(')', '');
      jQuery(this).text(string);
    });
    
    var ssoLoginUrl = jQuery('#loginRedirectProviderList').children('li:first-child').children('a:first-child').attr('href');
    
    jQuery('#ssoLoginLink').attr('href', ssoLoginUrl);
    jQuery('#ssoLoginLinkMobile').attr('href', ssoLoginUrl);
    
    jQuery('#hiddenLoginContainer').remove();
  </script>
  <script>
     (function(h,o,t,j,a,r){
         h.hj=h.hj||function(){(h.hj.q=h.hj.q||[]).push(arguments)};
         h._hjSettings={hjid:253810,hjsv:5};
         a=o.getElementsByTagName('head')[0];
         r=o.createElement('script');r.async=1;
         r.src=t+h._hjSettings.hjid+j+h._hjSettings.hjsv;
         a.appendChild(r);
     })(window,document,'//static.hotjar.com/c/hotjar-','.js?sv=');
  </script> 
  <script>
     (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
     (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
     m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
     })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
     
     ga('create', 'UA-6149580-1', 'auto');
     ga('send', 'pageview');     
  </script> 
</bbNG:jsBlock>

</bbNG:genericPage>