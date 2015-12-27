<%@ include file="/webapis/ui/doctype.jspf" %>

<%@ taglib uri="/bbNG" prefix="bbNG" %>
<%@ taglib uri="/bbUI" prefix="bbUI" %>
<%@ taglib uri="/loginUI" prefix="loginUI" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@page import="java.util.Date"%>

<%
  Date rightNow = new Date();
  Date migrationStart = new Date(115, 11, 28, 9, 0, 0);
  Date migrationEnd = new Date(115, 11, 28, 15, 0, 0);
  
  Boolean isMigration = false;
  
  if (rightNow.compareTo(migrationStart) > 0 && rightNow.compareTo(migrationEnd) < 0) {
    isMigration = true;
  }
%>

<c:set var="productName" value="${ loginUI:getProductName() }" />

<bbNG:genericPage authentication="N" wrapper="false" onLoad="if (document.forms.login.user_id != undefined) document.forms.login.user_id.focus()" bodyClass="login-page">

<%@ include file="/webapis/ui/cookie-disclosure-login.jspf"%>

<bbNG:cssBlock>
<style type="text/css">
	body.login-page { background: #E5E5E5 url('/bbcswebdav/library/login/umw/page-bg.gif'); }
	div.loginBody { width: 900px; padding: 125px 0 50px 0; background: #E5E5E5 url('/bbcswebdav/library/login/umw/umw-banner.jpg') no-repeat scroll 0 0; }
	div.loginBody .receipt { width: 380px; }
	#loginBoxContainer { }
	#loginBoxContainer #loginBoxHeader { padding: 0 10px 10px 10px; margin: 0 20px 0 20px; }
	#loginBoxContainer #loginBoxFooter { clear: both; padding: 10px 10px 0 10px; margin: 0 20px 0 20px; }
	#loginBlockColumnLeft { float: left; width: 390px; padding-left: 30px; padding-right: 29px; border-right: 1px dashed #666666; }
	#loginBlockColumnRight { float: left; width: 390px; padding-left: 30px; padding-right: 30px; }
	.loginBlockColumn { padding-left: 30px; padding-right: 30px; }
	.loginBlock { height: 300px; background-color: white; padding: 0; border: 1px solid #999999; margin-bottom: 20px; }
	.loginBlock h2 { padding: 0; font-size: 125%; }
	.loginBlock h3 { padding: 0; font-size: 110%; }
	.loginBlock p { margin-bottom: 10px; }
	.loginBlock ul { padding-left: 20px; list-style-type: circle; }
	.loginAlert { background-color: #FFFFCC; position: relative; top: -150px; }
	.loginBox { width: 400px; margin-left: auto; margin-right: auto; text-align: left; }
	.loginBox h2 { text-align: left; padding-left: 28px; }
	#loginBox { width: 360px; height: 260px; float: left; padding: 40px 0 0 40px; border-right: 1px solid #999; }
	#loginBox p { text-align: left; margin-bottom: 10px; }
	#loginBox ul { width: 375px; margin-left: 8px; }
	#loginBox li, #vistaFormFields li { padding-bottom: 5px; }
	#loginBox li label { 
		color: #000000; text-transform: none; width: 80px; font-size: 100%; letter-spacing: 0; display: block; float: left;
	}
	#loginBox input[type="text"], #loginBox input[type="password"] { 
		width: 200px; border: 1px solid #999999; padding: 2px; font-size: 125%; background-color: white; display: block; float: left;
	}
	#loginBox li input[type="submit"] { margin-left: 70px; padding: 2px 30px; }
	.loginFormVista { margin-bottom: 30px; }
	.loginFormVista td { padding: 2px; }
	#vistaFormFields .button-1 { font-size: 130%; margin: 15px 0 0 230px; padding: 7px 22px 7px 22px; width: auto; }
	/* #loginAnnouncements { padding-top: 5px; } */
	#loginAnnouncements { padding-top: 0; }
	#loginAnnouncements ul { width: 100%; border-width: 0; } /* 840px */
	#loginAnnouncements li { background-color: transparent; color: #000000; margin-bottom: 0; }
	#loginAnnouncements ul li strong:first-child { font-family: inherit; }
	.login-page #copyright { background-color: #E5E5E5; bottom: 0; margin-top: 0; position: relative; padding-bottom: 30px; }
	#loginAnnouncementAlert { background-color: #FFFF66; padding: 10px 20px; margin-bottom: 10px; color: red; font-size: 125%; font-weight: bold; text-align: center; }
	.browser-check-label { color: #aa433c; font-weight: bold; }
  
  .loginAnnouncementsBlock { border: 1px solid #999; background-color: #FFFFCC; margin-bottom: 20px; }
  .loginAnnouncementsBlock h2 { font-size: 150%; margin-left: 15px; }
  
  #helpBox { width: 370px; height: 260px; padding: 40px 20px 0 20px; float: right; }
  li span.forgot { margin-right: 180px; }
  #loginBoxContainer a { text-decoration: underline !important; border-bottom: none !important; color: blue !important; }
  #loginAnnouncementsAlert { padding: 0 20px 20px 20px; }
</style>
</bbNG:cssBlock>

<div id="loginPageContainer">
  <div id="loginPane">
    <div id="loginContainer">
      <div id="loginHeader" class="clearfix">
        <loginUI:accessibility />
      </div>
      <div id="loginLang" class="clearfix">
        <loginUI:localePicker />
      </div>
      <div class="clearfix loginBody">
        <div id="loginBoxContainer">	  
          <loginUI:errorMessage />
          <div class="loginBlockColumn">
            <div class="loginAnnouncementsBlock">
              <div id="loginAnnouncementsAlert">
                <h3>Please Note:</h3>
                <ul>
                  <li>As a reminder to course teams: from December 21st at 5 PM until Dec 28th at 12 PM, 
                  please refrain from editing courses. Any changes made to courses during that time will 
                  not be reflected in the new environment.<br />
                  <br />
                  However, it will be possible to use the Grade Center to calculate and save grades for 
                  immediate release to students in the current environment, as well for upload into the 
                  new environment. Please contact Academic Computing Services for assistance with grading 
                  Blackboard assessments and assignments offline.</li>
                </ul>
              </div>
            </div>
            <div class="loginBlock">
              <div id="loginBox" class="loginBox">
                <h2>Blackboard Learn Login</h2>
                <% if (isMigration) { %>
                  <div class="migration">
                    <p><strong>Please Note</strong></p>
                    <p>This system is unavailable today due to a content migration.</p>
                  </div>
                <% } else { %>
                  <loginUI:loginForm />
                <% } %>				
              </div>
              <div id="helpBox">
                <h2>Need Help?</h2>
                <h3>Monday through Friday 7:00 AM - 6:00 PM (EST)</h3>
                <p>Call 508-856-8643 or email the 
                <a href="mailto:umwhelpdesk@umassmed.edu">UMMS Help Desk</a>.
                Expect to receive a response within 24 hours.</p>
                <h3>Weekends, Holidays and After Hours</h3>
                <p>Call 1-855-789-7056 or visit
                <a href="http://umw.echelp.org" target="_blank">http://umw.echelp.org</a>
                to submit a ticket or initiate a real-time chat.</p>
              </div>
            </div>
            <div class="loginAnnouncementsBlock">
              <h2>Important Information:</h2>
              
              <loginUI:systemAnnouncements maxItems="5" />			
            </div>
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