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
	div.loginBody { width: 900px; padding: 125px 0 50px 0; background: #E5E5E5 url('/bbcswebdav/library/login/umw/umw-banner.jpg') no-repeat scroll 0 0; }
	div.loginBody .receipt { width: 380px; }
	#loginBoxContainer { }
	#loginBoxContainer #loginBoxHeader { padding: 0 10px 10px 10px; margin: 0 20px 0 20px; }
	#loginBoxContainer #loginBoxFooter { clear: both; padding: 10px 10px 0 10px; margin: 0 20px 0 20px; }
	#loginBlockColumnLeft { float: left; width: 390px; padding-left: 30px; padding-right: 29px; border-right: 1px dashed #666666; }
	#loginBlockColumnRight { float: left; width: 390px; padding-left: 30px; padding-right: 30px; }
	.loginBlockColumn { padding-left: 30px; padding-right: 30px; }
	.loginBlock { background-color: white; padding: 10px 20px 20px 20px; border: 1px solid #999999; margin-top: 20px; margin-bottom: 20px; }
	.loginBlock h2 { padding: 0; font-size: 125%; }
	.loginBlock h3 { padding: 0; font-size: 110%; }
	.loginBlock p { margin-bottom: 10px; }
	.loginBlock ul { padding-left: 20px; list-style-type: circle; }
	.loginAlert { background-color: #FFFFCC; position: relative; top: -150px; }
	.loginBox { width: 400px; margin-left: auto; margin-right: auto; text-align: left; }
	.loginBox h2 { text-align: center; }
	#loginBox { width: 400px; margin-left: auto; margin-right: auto; margin-bottom: 30px; text-align: left; }
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
	#loginAnnouncements ul { width: 100%; border: 1px solid #999999; } /* 840px */
	#loginAnnouncements li { background-color: #FFFFCC; color: #000000; margin-bottom: 0; }
	#loginAnnouncements ul li strong:first-child { font-family: inherit; }
	.login-page #copyright { background-color: #E5E5E5; bottom: 0; margin-top: 0; position: relative; padding-bottom: 30px; }
	#loginAnnouncementAlert { background-color: #FFFF66; padding: 10px 20px; margin-bottom: 10px; color: red; font-size: 125%; font-weight: bold; text-align: center; }
	.browser-check-label { color: #aa433c; font-weight: bold; }
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
        
		<div id="loginAnnouncementAlert" style="display:none"></div>
		<div id="loginBoxContainer">	  
		  <loginUI:errorMessage />
		  <div class="loginBlockColumn">
			<div id="loginBox" class="loginBox">
				<h2>Blackboard Learn users login here:</h2>
				<loginUI:loginForm />				
            </div>
			<div class="loginBlock">
              <h3>Need Technical Support?</h3>
				<p>Please visit the Help Desk for Self-Help and Contact information at 
				<a href="http://umw.echelp.org" target="_blank">http://umw.echelp.org</a></p>
				<p>E-mail Support: <a href="mailto:worcestersupport@umassonline.net">worcestersupport@umassonline.net</a></p>
				<p><span class="browser-check-label">Check your browser version and plug-ins:</span> 
				<a target="_blank" href="http://browserhelp.embanet.com/bhtg/ret/browsercheck.aspx?acct=embanet&customtest=UMW&customstyle=2011_style&TB_iframe=true&height=600&width=550"><strong>Check My Browser!</strong></a></p>
			</div>
			<loginUI:systemAnnouncements maxItems="5" />			
          </div>
          <div class="loginBlockColumn">
			<div class="loginBox">
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
		
		/*
		jQuery('#loginAnnouncements > ul > li > strong').each( function() {
			var this_title = jQuery(this).text();
			var this_content = jQuery(this).parent('li').children('.vtbegenerated').html();
			if (this_title.indexOf('Supported Browsers and Operating Systems') >= 0) {
				jQuery('#loginBoxHeader').html(this_content).addClass('header-announcement');
				jQuery(this).parent('li').remove();
				jQuery('#loginBoxHeader > p > span > a').attr('target', '_blank'); 
				
				var this_content = jQuery('#loginBoxHeader').html();
				var this_new_content = this_content.replace(/#000000/gi, '#FF0000');
				jQuery('#loginBoxHeader').html(this_new_content);
			}
		});
		*/
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