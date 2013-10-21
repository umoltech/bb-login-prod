<%@ include file="/webapis/ui/doctype.jspf" %>

<%@ taglib uri="/bbNG" prefix="bbNG" %>
<%@ taglib uri="/bbUI" prefix="bbUI" %>
<%@ taglib uri="/loginUI" prefix="loginUI" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="productName" value="${ loginUI:getProductName() }" />

<bbNG:genericPage authentication="N" wrapper="false" onLoad="if (document.forms.login.user_id != undefined) document.forms.login.user_id.focus()" bodyClass="login-page">

<%@ include file="/webapis/ui/cookie-disclosure-login.jspf"%>

<bbNG:cssBlock>
<style type="text/css">
	body.login-page { background: #E5E5E5 url('/bbcswebdav/library/login/umw/page-bg.gif'); }
	div.loginBody { width: 900px; padding: 150px 0 50px 0; background: #E5E5E5 url('/bbcswebdav/library/login/umw/umms-logo-900x130.gif') no-repeat scroll 0 0; }
	div.loginBody .receipt { width: 380px; }
	#loginBoxContainer { }
	#loginBoxContainer #loginBoxHeader { padding: 0 10px 10px 10px; margin: 0 20px 0 20px; }
	#loginBoxContainer #loginBoxFooter { clear: both; padding: 10px 10px 0 10px; margin: 0 20px 0 20px; }
	#loginBlockColumnLeft { float: left; width: 390px; padding-left: 30px; padding-right: 29px; border-right: 1px dashed #666666; }
	#loginBlockColumnRight { float: left; width: 390px; padding-left: 30px; padding-right: 30px; }
	.loginBlock { background-color: white; padding: 10px 20px 20px 20px; border: 1px solid #999999; margin-top: 20px; margin-bottom: 20px; }
	.loginBlock h2 { padding: 0; font-size: 125%; }
	.loginBlock h3 { padding: 0; font-size: 110%; }
	.loginBlock p { margin-bottom: 10px; }
	.loginBlock ul { padding-left: 20px; list-style-type: circle; }
	.loginAlert { background-color: #FFFFCC; position: relative; top: -150px; }
	#loginBox { width: 350px; margin-bottom: 30px; }
	#loginBox p { text-align: left; margin-bottom: 10px; }
	#loginBox ul { width: 375px; margin-left: 8px; }
	#loginBox li, #vistaFormFields li { padding-bottom: 5px; }
	#loginBox li label, #vistaFormFields li label { 
		color: #000000; text-transform: none; width: 100px; font-size: 100%; letter-spacing: 0; display: inline;
	}
	#loginBox input[type="text"], #loginBox input[type="password"], .loginFormVista input { 
		width: 250px; border: 1px solid #999999; padding: 2px; font-size: 125%; background-color: white; margin-left: 10px;
	}
	#loginBox li input[type="submit"] { margin-right: 25px; }
	.loginFormVista { margin-bottom: 30px; }
	.loginFormVista td { padding: 2px; }
	#vistaFormFields .button-1 { font-size: 130%; margin: 15px 0 0 230px; padding: 7px 22px 7px 22px; width: auto; }
	/* #loginAnnouncements { padding-top: 5px; } */
	#loginAnnouncements { padding-top: 0; }
	#loginAnnouncements ul { width: 388px; border: 1px solid #999999; } /* 840px */
	#loginAnnouncements li { background-color: #FFFFCC; margin-bottom: 0; }
	.login-page #copyright { background-color: #E5E5E5; bottom: 0; margin-top: 0; position: relative; padding-bottom: 30px; }
	#loginAnnouncementAlert { background-color: #FFFF66; padding: 10px 20px; margin-bottom: 10px; color: red; font-size: 125%; font-weight: bold; text-align: center; }
</style>
</bbNG:cssBlock>

<div id="loginPageContainer">
  <div id="loginPane">
    <%-- Begin top rounder --%>
    <div class="topRound loginBack"><b class="outer"></b><b class="middle"></b><b class="inner"></b></div>
    <%-- End top rounder --%>

    <div id="loginContainer">
      <div id="loginHeader" class="clearfix">
        <h1 class="hideoff">${productName}</h1>
        <img src="/bbcswebdav/library/login/umw/umms-logo.gif" alt="${productName}" class="productLogo" />
        <loginUI:accessibility />
      </div>

      <div id="loginLang" class="clearfix">
        <loginUI:localePicker />
      </div>

      <div class="clearfix loginBody">
        
		<div id="loginAnnouncementAlert" style="display:none"></div>
		<div id="loginBoxContainer">
          <div id="loginBoxHeader">
            The University of Massachusetts Medical School will begin moving to a new Learning Management System, 
			Blackboard Learn (Bb Learn), beginning in May 2013 through December 2013. The new learning platform 
			is used throughout the University of Massachusetts. The campus has taken this opportunity to work 
			collaboratively with students, faculty and course support teams to design an institutional template 
			with the goal of providing a consistent and easy-to-use presence across all of our courses.   
			As your course is moved to the new Learning Management System you will receive your Bb Learn credentials 
			in your UMass e-mail.
          </div>		  
		  <div id="loginBlockColumnLeft">
			<h2>Blackboard Learn users login here:</h2>
			<loginUI:errorMessage />
			<div id="loginBox">
				<loginUI:loginForm />				
            </div>
			<loginUI:systemAnnouncements maxItems="5" />
			<div class="loginBlock">
              <h3>New Bb Learn Users:</h3>
			  <span style="color:red">Please note you will have the same user name in Bb Learn as you do in BLS Vista, 
			  but a <span style="font-weight:bold">different password</span>.</span> 
			  When you first log in you will be able to change your password 
			  to match your BLS Vista password.  
			  <a href="http://inside.umassmed.edu/uploadedFiles/IS/Services/Groups/Academic/BB_Learn/ChangingYourPassword.pdf" target="_blank">Instructions</a> 
			  for changing your password are available.</p>
			</div>
			
          </div>
          <div id="loginBlockColumnRight">
			<h2>Blackboard Vista users login here:</h2>
			<div class="loginFormVista">
				<form action="https://learning.umassonline.net/webct/authenticateUser.dowebct" method="post" name="useridForm">
                <input type="hidden" name="timeZoneOffset" /> 
				<input type="hidden" name="glcid" value="146.189.207.5-1097756999208-2018085017" /> 
				<input type="hidden" name="insId" value="26334" /> 
				<input type="hidden" name="insName" value="UMass Worcester" /> 
				<input type="hidden" name="owl_WEBCT_LOGIN_URL" value="https://learning.umassonline.net/webct/authenticateUser.dowebct" /> 
				<input type="hidden" name="owl_WEBCT_BASE_URL" value="https://learning.umassonline.net" />
				<div id="vistaFormFields" class="clearfix">
					<ul id="vistaFormList" class="clearFix">
						<li class="clearfix">
							<label>Username:</label>
							<input type="text" title="Username" maxlength="100" name="webctid" />
						</li>
						<li class="clearfix">
							<label>Password:</label>
							<input type="password" title="Password" maxlength="100" name="password" />
						</li>
						<li class="clearfix">
							<input type="submit" class="submit button-1" value="Login" />
						</li>
					</ul>
				</div>
				</form>
			</div>
			<%--
			<div class="loginBlock loginAlert">
				<h3>Service Unavailable</h3>
				<p>Blackboard Vista is currently unavailable due to system issues. Please contact your local help desk with any questions.</p>
				<p>Last Updated: Aug 29, 2013 7:40 AM</p>
			</div>
			--%>
			<div class="loginBlock" style="background-color:#FFFFCC">
				<h3>Service Window Every Wednesday 4am - 7am</h3>
				<p>There will be a Blackboard Vista servicing and maintenance window held every 
				Wednesday from 4am to 7am ET. During this time, Blackboard Vista may not be available.</p>
				<p>Thank you,<br />The Blackboard Vista LMS Administrators</p>
			</div>
          </div>
		  <div id="loginBoxFooter">
		    <div class="loginBlock">
			  <h3>Need Technical Support?</h3>
			  <p>Please visit the Help Desk for Self-Help and Contact information at
			  <a href="http://umw.echelp.org">http://umw.echelp.org</a></p>
			  <p>E-mail Support: <a href="mailto:worcestersupport@umassonline.net">worcestersupport@umassonline.net</a></p>
			</div>	
			<%-- TEMP: placeholder for announcements --%>			
          </div>
        </div>
		
        <div id="loginOptions">
          <loginUI:gatewayButtons />
        </div>
      </div>

      <loginUI:welcomeArea />

      
    </div>

    <%-- Start Bottom Rounder --%>
    <div class="bottomRound loginBack"><b class="inner"></b><b class="middle"></b><b class="outer"></b></div>
    <%-- End Bottom Rounder --%>
  </div>
  
  <bbNG:copyright />
</div>

<bbNG:jsBlock>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">	
	jQuery.noConflict();
	jQuery(document).ready( function() {				
		jQuery('.forgot').children('a').text('Need Your Password?');
	});
</script>
	
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-793538-7']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</bbNG:jsBlock>

</bbNG:genericPage>