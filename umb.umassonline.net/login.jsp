<%@ include file="/webapis/ui/doctype.jspf" %>

<%@ taglib uri="/bbNG" prefix="bbNG" %>
<%@ taglib uri="/bbUI" prefix="bbUI" %>
<%@ taglib uri="/loginUI" prefix="loginUI" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="productName" value="${ loginUI:getProductName() }" />

<bbNG:genericPage authentication="N" wrapper="N" skipCoreCss="true" onLoad="" bodyClass="ci-page">

<%@ include file="/webapis/ui/cookie-disclosure-login.jspf"%>



<bbNG:cssBlock>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="description" content="Feeds from the message alerts content" />
<meta name="keywords" content="University of Massachusetts Boston, UMass, UMass Boston, UMB, Human Resources, Careers, Job Opportunities, Employement " />
<meta name="robots" content="index,follow,archive" />
<link rel="apple-touch-icon" href="https://www.umb.edu/apple-touch-icon.png">
<link rel="shortcut icon" href="https://www.umb.edu/favicon.gif" type="image/gif">
<link rel="stylesheet" href="https://www.umb.edu/assets/kube/css/kube.css?t=1503588416">
<link rel="stylesheet" href="https://www.umb.edu/assets/kube/css/centers.css?t=1503588416">
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,600,700"/>

<link rel="stylesheet" href="https://www.umb.edu/assets/styles/smoothness/jquery-ui-1.8.14.custom.css">

<style type="text/css">
	body.ci-page .masthead.with_image .heading-wrapper {position:relative;}

	ul.nav.navbar-nav {border-bottom:1px solid #005a8b; font-weight:600;}
	ul.nav.navbar-nav li {display: block; margin-right: 12px ;}
	ul.nav.navbar-nav li:before { list-style: none;  content: ''; }

	.masthead .banner {border: 1px solid #f00;min-height: 30px; }

	.form {background: #f9f9f9; padding:18px; border-top:1px solid #ccc;border-right:1px solid #ccc;}
	#loginFormList li {list-style:none;}
	#loginFormList li label {display:block;}
	#loginAnnouncements {padding:18px; }
	#loginAnnouncements ul li {list-style:none; margin-left:-24px;}
	#entry-login.button.expand {margin-top:18px; padding: .75em 4em; font-size:1.3em; background:#005a8b; color: #fff;font-weight:600; min-width:160px; border-radius:0; border:2px solid #005a8b;}
	#entry-login.button.expand:hover {background:#fff; border:2px solid #005a8b; color:#005a8b;}
	#entry-login.button.expand:visited {background: #fff;  border:2px solid #005a8b; color:#005a8b;}
	.gethelp, .academic_calendar {padding: 18px;}
	.academic_calendar {border-left: 1px solid #ccc; border-right: 1px solid #ccc; min-height:450px;}
	.gethelp ul li, .academic_calendar ul li {list-style:none; margin-left:-24px;}
	.hideoff {display: none;}
	em.announcementDate {display: block;}
	#loginErrorMessage {
		background-color: #d31011;
		color: #fff;
		font-weight: bold;
		padding: 10px;
		margin-bottom: 20px;
	}

	.callout {
		height:450px;
		background: url('/bbcswebdav/library/login/umb/DSC_0853_studentsLaptop_ll_nov_2014.jpg');
		background-size: cover;
		background-position: center center;
		background-repeat: no-repeat;
		position:relative;
	}

	.blue-caption {
		background:#005a8b;
		padding: 1.3em;
		height:35%;
		position:absolute;
		bottom:0;
	}

	.blue-caption a, .blue-caption p {color:#fff; font-weight:400;}


	.blue-caption p:after {
		font-family: 'FontAwesome';
		content: '\f0a9';
		margin-left: .3em;
		font-size: 1.3em;
		color: #fff;
		opacity: .7;
	}

	.blue-caption h2 a {font-size: .9em; font-weight:600;}

	@media (max-width: 1024px) {
		.callout {
			height: 560px;
		}

		.blue-caption {
			height: 40%;
		}
	}

	@media (max-width:768px) {
		#loginAnnouncements {border-bottom: 1px solid #ccc;}
		.academic_calendar {border-bottom: 1px solid #ccc;}
	}

</style>
</bbNG:cssBlock>

<bbNG:jsBlock>
	<script src="https://use.fontawesome.com/72fbe63326.js"></script>
	<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
	<!--script src="https://www.umb.edu/assets/kube/js/kube.js?t=1503588416"></script-->
</bbNG:jsBlock>

<div class="global-nav blue">
	<header class="global-nav-inner units-row units-split end">
		<div class="unit-40">
			<a href="#content" class="sr-only">Skip to Content</a>
			<a href="https://www.umb.edu/">
				<img src="https://www.umb.edu/assets/images/umb-white.png" alt="University of Massachusetts Boston" class="full-screen">
				<img src="https://www.umb.edu/assets/images/umb-white-mobile.png" alt="UMass Boston" class="mobile">
				<span class="sr-only">Return to Home Page</span>
			</a>
			<div class="navigation-toggle " data-tools="navigation-toggle" data-target=".navbar-collapse" role="button" aria-haspopup="true">
				<span class="sr-only-menu" aria-label="Expand Menu">Menu</span>
			</div>
		</div>	

		<div class="unit-60"></div>
	</header>
</div>
<div id="sidebar-nav-mobile" class="sidebar-nav"></div>
<div id="main-nav-mobile" class="main-nav blue"></div>
<div class="masthead with_image">
	<div class="heading-wrapper">
		<div class="container units-row units-split  end">
			<div class="unit-100 masthead-inner">
				<h1><a href="#">Blackboard Learn Login</a></h1>
			</div>
		</div>
	</div>
	<div class="container">
		<!-- incorporate welcome content in right column 
		<div class="units-row  units-split end">
			 <div  class="unit-100 "  >
				<h2>Welcome Students and Faculty to the Blackboard Online Learning System</h2>
			</div>
		</div>
		-->

		<div class="units-row top units-split end" style="background: #f9f9f9; border-left:1px solid #ccc">
			<div  class="unit-50 form"  >
				<div >
					<p>Enter UMass Boston email username and password below.<br />
					<a href="https://www.umb.edu/it/getting_services/support_for_online_courses_blackboard/blackboard_learn_9_student_support#BBlogin" target="_blank">How to login</a></p>
					<div class="clearfix loginBody">
						<loginUI:errorMessage />

						<div id="loginBox">
							<loginUI:loginForm loginText="Log In" />
		 				</div>
					</div>
				</div>
			</div> 

			<div class="unit-50  callout">
				<div class=" blue-caption" >
					<h2><a href="https://www.umb.edu/it/students" target="_blank">IT Services for Students</a></h2>
					<p><a href="https://www.umb.edu/it/students" target="_blank">Download Microsoft Windows 
          10 Education Edition and Microsoft Office - Word, Excel, and PowerPoint FREE! 
          Learn about special pricing on hardware and software, safe computing tips 
          and more.</a></p>
				</div>
			</div>

		</div>

		<div class="units-row  units-split end" style="border-top: 2px solid #a85612; border-left: 1px solid #ccc;  border-right:1px solid #ccc;">
			<div class="unit-33 " >
				<loginUI:systemAnnouncements maxItems="5" />
			</div>

			<div class="unit-33 " >
				<div class="academic_calendar">
					<h3>Academic Calendars</h3>
					<ul class="unstyled">
						<li><a href="https://www.umb.edu/academics/caps/credit/fall/calendar">CAPS/Online</a></li>
						<li><a href="https://www.umb.edu/registrar/academic_calendar">Regular/On Campus</a></li>
						<li>Your course may not be available before the official listed course start date.</li>						
					</ul>
					<hr>
					<h3 >Blackboard App</h3>
					<ul class="unstyled">
						<li><a href="https://www.blackboard.com/mobile-learning/bbstudent.aspx" target="_blank">Access your online course through your mobile device!</a></li>
					</ul>
				</div>
			</div>

			<div class="unit-33 ">
				<div class="gethelp">
					<h3>Getting Password Help</h3>
					<p>To reset your password, go to: <a href="https://mypassword.umb.edu" target="_blank">https://mypassword.umb.edu</a></p>
					<p><em>For further assistance with passwords:</em><br>Contact the IT Service Desk located on the 3rd floor of Healey Library<br />
					<a href="mailto:ITServiceDesk@umb.edu">ITServiceDesk@umb.edu</a><br />
					617-287-5220</p>
					<p>Open Monday through Friday 8:00 to 6:00<br />
					Summer 8:00 to 5:00<br />
					Closed holidays and when library is closed</p>
				</div>
			</div>
		</div>
	</div>


	<footer class="global-footer">
		<div class="footer-base">
			<div class="units-row footer-base-inner">
				<div class="unit-100">
					<p>&copy; 2018  University of Massachusetts Boston</p>
					<p>100 William T. Morrissey Blvd., Boston, MA 02125 |  <a href="tel:6172875000">Tel: 617.287.5000</a></p>
				</div>
			</div>
		</div>
	</footer>
</div>

<bbNG:jsBlock>
<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-793538-8', 'umassonline.net');
ga('send', 'pageview');
</script>

<script>
  var umolJQ = jQuery.noConflict();
  
  umolJQ(document).ready( function() {
    umolJQ('.forgot a').removeAttr('onclick').attr('href', 'https://mypassword.umb.edu').attr('target', '_blank');
  });
</script>
</bbNG:jsBlock>
</bbNG:genericPage>