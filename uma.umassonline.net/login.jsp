<%@ include file="/webapis/ui/doctype.jspf" %>

<%@ taglib uri="/bbNG" prefix="bbNG" %>
<%@ taglib uri="/bbUI" prefix="bbUI" %>
<%@ taglib uri="/loginUI" prefix="loginUI" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<% 
	String targetElement = "bb-session-key";
	String targetHeader = "referer";
	String targetUserAttribute = "UserId: {unset id}";
	String targetLocation = "https://umol.umass.edu/Shibboleth.sso/Logout?return=https://webauth.umass.edu/Logout";
	String targetRefererPost = "https://uma.umassonline.net";
	String targetRefererPre = "https://umassonline-uma.blackboard.com";
	
	java.util.Enumeration enuR = request.getAttributeNames();
	java.util.Enumeration enuH = request.getHeaderNames();
	
	while(enuR.hasMoreElements()) {
    String elementName = (String)enuR.nextElement();	
		
    if (elementName == targetElement) {		
			Object elementValue = request.getAttribute(targetElement);
			
			while(enuH.hasMoreElements()) {
				String headerName = (String)enuH.nextElement();
				String headerValue = request.getHeader(headerName);
				
				if (headerName.toLowerCase().equals(targetHeader)) {
					if (headerValue.length() > 7) {
						if (elementValue.toString().contains(targetUserAttribute) && (headerValue.contains(targetRefererPost) || headerValue.contains(targetRefererPre))) {
							response.setStatus(response.SC_MOVED_TEMPORARILY);
							response.setHeader("Location", targetLocation);
						}
					}
				}
			}
		}
	}	
%>

<bbNG:genericPage authentication="N" wrapper="false">

<%@ include file="/webapis/ui/cookie-disclosure-login.jspf"%>

<!-- header image map (2XL) -->
<map name="headermap">
	<area class="ext" target="_blank" shape="rect" coords="73,47,287,66" href="http://www.massachusetts.edu" alt="University of Massachusetts System" title="University of Massachusetts System" />
	<area class="ext" target="_blank" shape="rect" coords="73,66,114,85" href="http://www.umassulearn.net" alt="UMass Amherst" title="UMass Amherst" />
	<area class="ext" target="_blank" shape="rect" coords="114,66,146,85" href="http://www.umb.edu/academics/uc/online/" alt="UMass Boston" title="UMass Boston" />
	<area class="ext" target="_blank" shape="rect" coords="146,66,199,85" href="http://www.umassd.edu/pce/" alt="UMass Dartmouth" title="UMass Dartmouth" />
	<area class="ext" target="_blank" shape="rect" coords="199,66,233,85" href="http://continuinged.uml.edu/online/" alt="UMass Lowell" title="UMass Lowell" />
	<area class="ext" target="_blank" shape="rect" coords="233,66,287,85" href="http://www.umassmed.edu/cme/online_cme/index.aspx" alt="UMass Worcester" title="UMass Worcester" />
</map>

<div align="center">
	<div class="main">
		<div class="top">
			<div id="logo">
				<a href="http://www.umassonline.net/" title="Home" rel="home"><img src="/bbcswebdav/library/login/uma/images/template/header.gif" usemap="#headermap" /></a>
			</div>
			<div id="header-right">
				<div id="social-media">
					<div class="icon"><a href="http://www.facebook.com/MyUMassOnline" title="Visit UMassOnline on Facebook" target="_blank"><img src="/bbcswebdav/library/login/uma/images/template/facebook.png" alt="Facebook icon" ></a></div>
					<div class="icon"><a href="http://www.linkedin.com/company/86671" title="Visit UMassOnline on LinkedIn" target="_blank"><img src="/bbcswebdav/library/login/uma/images/template/linkedin.png" alt="LinkedIn icon" ></a></div>
					<div class="icon"><a href="http://twitter.com/MyUMassOnline" title="Visit @MyUMassOnline on Twitter" target="_blank"><img src="/bbcswebdav/library/login/uma/images/template/twitter.png" alt="Twitter icon" ></a></div>
					<div class="icon"><a href="http://www.umassonline.net/blog" title="Visit Blog" target="_blank"><img src="/bbcswebdav/library/login/uma/images/template/blog.png" alt="Blog icon" ></a></div>
					<div class="icon"><a href="http://www.pinterest.com/umassonline/" title="Visit UMassOnline on Pinterest" target="_blank"><img src="/bbcswebdav/library/login/uma/images/template/pinterest.png" alt="Pinterest icon" ></a></div>
				</div>
			</div>
		</div>
		<div class="nav" id="navbar">
			<table>
				<tr>
					<td><a href="http://www.umassonline.net/about-us">About Us</a></td>
					<td><a href="http://www.umassonline.net/distance-learning">Distance Learning</a></td>
					<td><a href="http://www.umassonline.net/programs">Programs</a></td>
					<td><a href="http://www.umassonline.net/courses">Courses</a></td>
					<td><a href="http://www.umassonline.net/student-services">Student Services</a></td>
					<td><a href="http://login.umassonline.net/">Student Login</a></td>
				</tr>
			</table>
		</div>
		<div class="content">

      <table cellspacing="0">
        <tr>
          <td class="left2col">
            <div class="breadcrumb"><a href="http://www.umassonline.net/">UMassOnline</a>&nbsp;&gt;&nbsp;UMassOnline | Amherst Login Page</div>
            <div class="head">
              <h1>UMass Amherst</h1>
              <h2>Blackboard Learn Login Page</h2>
            </div>

            <!-- start body -->
            <h3>Welcome to UMass Amherst and UMassOnline.</h3>
            <p>Through UMassOnline, UMass Amherst Continuing & Professional Education presents online courses on the Blackboard Learn learning management system.</p>
            <p>You must have an active IT Account NetID to log in. <a target="_blank" href="https://www.it.umass.edu/accounts/activate-your-account">Activate Your IT Account</a></p>
            <p>Online courses become available for access one week before the start date of the class.<br />
            </p>
            <loginUI:systemAnnouncements maxItems="5" />
            
            <table width="100%" cellspacing="10" cellpadding="0" border="0" align="center">
              <tbody>
                <tr>
                  <td width="45%" valign="top">             
                    <div class="loginbox">
                      <h3 class="center-txt">FALL Courses - Login Here</h3>
                      <loginUI:errorMessage />
                      <!--
                      <div id="bblearn-popup" class="popup">
                        <div id="bblearn-popup-msg">
                          <p style="font-weight:bold">Evaluate Your Course(s) and Instruction</p>
                          <p>For at least one of your courses, the opportunity to evaluate the course and instruction is online and easier than ever!</p>
                          <p>Your responses are completely confidential, and any results reported will remain anonymous and will in no way affect your grades.</p>
                          <p>Your evaluation is very important and helps us improve the quality of the educational experience for all students. It only takes a few minutes, so please complete your evaluation(s) now!</p>
                          <p><a id="bblearn-survey-url" target="_blank" onclick="javascript:bblearn_close_survey_popup()" href=""> > Start Now </a></p>
                        </div>
                        
                        <p><a href="javascript:bblearn_close_survey_popup()"> > Remind me later </a></p>
                      </div>
                      
                      <form accept-charset="UTF-8" id="bblearn-loginform" action="https://uma-uits.umassonline.net/webapps/login/" method="post">
                        <input type="hidden" value="login" name="action" />                              
                        <input type="hidden" value="" name="new_loc" />
                        <table>
                          <tbody>
                            <tr>
                              <td>NetID</td>
                              <td><input type="text" id="bblearn-username" name="user_id" maxlength="100" title="Username" /></td>
                            </tr>
                            <tr>
                              <td>Password</td>
                              <td><input type="password" id="bblearn-password" name="password" maxlength="100" title="Password" /></td>
                            </tr>
                            <tr>
                              <td>&nbsp;</td>
                              <td><input type="submit" id="edit-submit" value="Login" alt="Login" class="sub" /></td>
                            </tr>
                          </tbody>
                        </table>
                      </form>
                      -->
                      <form method="get" action="https://uma-uits.umassonline.net/webapps/login/">
                        <p class="center-txt"><button type="submit">Login</button></p>
                      </form>
                    </div>
                  </td>
                  <td width="45%" valign="top">              
                    <div class="loginbox">
                      <h3 class="center-txt">WINTER &amp; SPRING Courses - Login Here</h3>
                      <form method="get" action="https://umol.umass.edu">
                        <p class="center-txt"><button type="submit">Login</button></p>
                      </form>
                    </div>
                  </td>
                </tr>
              </tbody>
            </table>
            <p class="center-txt"><a href="https://www.it.umass.edu/support/accounts/understand-your-netid-password" target="_blank">About Your NetID and Password</a></p>
            <p class="center-txt"><a href="https://www.it.umass.edu/support/accounts/understand-your-netid-password#Your%20IT%20Account%20Password" target="_blank">Forgot Your Password?</a></p>
            <p>For specific questions pertaining to registration in courses presented by UMass Amherst Continuing &amp; Professional Education, please email: <a href="mailto:regoff@cpe.umass.edu">regoff@cpe.umass.edu</a>.</p>
            <p>Materials used in connection with a course may be subject to copyright protection.</p>
            <!-- end body -->
          </td>
          <td class="rightcol">
            <div class="block">
              <h3>Need Technical Support?</h3>
              <p>Please visit the Help Desk for Self-Help and Contact information:</p>
              <p><a href="http://supportcenter.embanet.com/uma" target="_blank">Support Center</a></p>
            </div>
            <div class="block">
              <h3>Can't find something?</h3>
              <p><a href="http://www.umassonline.net/contact-us"><img height="38" alt="UMass Online - Can't find something?" width="180" border="0" src="/bbcswebdav/library/login/uma/images/buttons/need-help.jpg" /></a></p>
            </div>
          </td>
        </tr>
      </table>      
     
    </div>
    <div class="footer">
      <div class="footlinks">
        <a href="http://www.umassonline.net/copyright">Copyright Compliance</a> |
        <a href="http://www.umassonline.net/privacy-policy">Privacy Policy</a> |
        <a href="http://www.umassonline.net/sitemap">Site Map</a> | 
        <a href="http://www.umassonline.net/technical-support-and-requirements">Site Requirements</a> |
        <a href="http://www.umassonline.net/contact-us">Contact Us</a>
      </div>
      <div class="footdisclaimer">        
        This is an <a href="http://www.umassonline.net/official">official</a> page/publication of the University of Massachusetts.
        &copy;2015 University of Massachusetts.
      </div>
      <div class="footsites">
        <a href="http://www.umass.edu">UMass Amherst</a> |
        <a href="http://www.umb.edu">UMass Boston</a> |
        <a href="http://www.umassd.edu">UMass Dartmouth</a> |
        <a href="http://www.uml.edu">UMass Lowell</a> |
        <a href="http://www.umassmed.edu">UMass Worcester</a> |
        <a href="http://www.umassclub.com">UMass Club</a> |
        <a href="http://www.massachusetts.edu">UMass System</a>
      </div>
    </div>
  </div>
</div>

<bbNG:cssBlock>
<link rel="stylesheet" type="text/css" href="/bbcswebdav/library/login/uma/css/styles.css" />
<style type="text/css">
tr:nth-child(2n) {
    background-color: transparent;
}
div.popup {
	height: 380px;
}
div.loginbox {
  height: 120px;
}
.center-txt {
  text-align: center;
}
</style>
</bbNG:cssBlock>

<bbNG:jsBlock>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script type="text/javascript">
	jQuery.noConflict();
	
	var bblearn = {
		elements: {
			form: '#bblearn-loginform',
			username: '#bblearn-username',
			password: '#bblearn-password',
			start_now: '#surveyurl',
			popup: '#bblearn-popup',
			popupmsg: '#bblearn-popup-msg',
			submit: '#edit-submit',
			server: 'owl-umacontedonlinecourseeval',
			datasrc: 'OwlUMAContEdOnlineCourseEval',
			fxn: 'cevallogin',
			surveyurl: '#bblearn-survey-url',
			surveychecked: false,
			owlUrl: 'https://owl.oit.umass.edu/owlj/servlet/OwlPreLogin'
		},
		prefix: 'uma_'
	};
    
  var courseevalavailable = false;
	
	function openCourseEvalPopUp(jsonpData) {
		if(!jsonpData) {
			return bblearn_submit_form();
		} else {
			if(jsonpData[0].length < 3) {
				bblearn_submit_form();
			}
	
			var numToComplete = jsonpData[0].numsurveys;
			var url = jsonpData[0].surveyurl;
			var popupnote = jsonpData[0].popupnote;
			
			if(isNaN(numToComplete) || url.length < 1) {
				return bblearn_submit_form();
			}
	
			if(numToComplete < 1) {
				return bblearn_submit_form();
			}
	
			jQuery(bblearn.elements.surveyurl).attr('href', url);
			
			if(popupnote && popupnote.length > 0) {
				jQuery(bblearn.elements.popupmsg).html(popupnote);
				jQuery(bblearn.elements.start_now).attr("onclick","bblearn_delayed_submit()");
			}
			
			courseevalavailable = true;
			
			jQuery(bblearn.elements.popup).show();  
			
		return false;
		}
	}
	
	var timeoutID = null;
	function bblearn_delayed_submit() {
		if (timeoutID) {
			window.clearTimeout(timeoutID);
		}
		timeoutID = window.setTimeout(bblearn_close_survey_popup, 2000);
	}
	
	var timeoutID2 = null;
	
	function bblearn_check_error_and_submit() {
	  if(timeoutID2) {
		 window.clearTimeout(timeoutID2);
	  }
	  timeoutID2 = window.setTimeout(bblearn_submit_on_error, 3000);
	}
    
	
	function bblearn_submit_on_error() {
		if(courseevalavailable==false) {
	  	  return bblearn_submit_form();	
		}
	}

	function bblearn_close_survey_popup() {
		jQuery(bblearn.elements.popup).hide();
		
		return bblearn_submit_form();
	}
  
	function bblearn_submit_form() {
		var bblearnUsername = jQuery(bblearn.elements.username).val();

		if (bblearnUsername.substring(0, bblearn.prefix.length) != bblearn.prefix) {
			bblearnUsername = bblearn.prefix + bblearnUsername;
		}

		jQuery(bblearn.elements.username).val(bblearnUsername);

		jQuery(bblearn.elements.form).submit();

		return true;
	}
  
	function bblearn_check_login_form() {  
		var id = jQuery(bblearn.elements.username).val();
		if (jQuery.trim(id) == '') {
			alert('Please supply a valid login ID.');
			return false;
		}

		var pw = jQuery(bblearn.elements.password).val();
		if (jQuery.trim(pw) == '') {
			alert('Please supply a valid password.');
			return false;
		}

		bblearn_check_surveys(id, pw);
		
		bblearn_check_error_and_submit();
		
		return false;
	}

	function bblearn_check_surveys(id, pw) {	
		if(bblearn.elements.surveychecked) {
			bblearn_submit_form();
		}

		jQuery.ajax({
			type: "GET",
			url: bblearn.elements.owlUrl,
			data: {
				Server: bblearn.elements.server,
				datasrc: bblearn.elements.datasrc,
				fxn: bblearn.elements.fxn,
				Login: id,
				password: pw,
				formatjsonp: 1,
				Mode:'1',
				callsrc:'bblearn'
			},
			dataType: "jsonp",
			async: false,
			timeout: 5000,
			jsonp: false,
			success: function(data){
				openCourseEvalPopUp(data);
			},
			error: function (xhr, ajaxOptions, thrownError) {
				if(xhr.status==200){
					//do nothing
				} else {
					bblearn_submit_form();
				}
			}              
		});
	}
  
	jQuery().ready( function() {
		jQuery('.bblearn-forgot-password').click( function() {
			var bblearnForgotPasswordWindow = window.open(
				'https://www.spire.umass.edu/psp/heproda/EMPLOYEE/HRMS/c/UM_SELF_SERVICE.UM_AM_RESET_OIT_PW.GBL?FolderPath=PORTAL_ROOT_OBJECT.UM_OIT_ACCOUNTS.UM_AM_RESET_OIT_PW_GBL&IsFolder=false&IgnoreParamTempl=FolderPath%252cIsFolder',
				'forgotPasswordWindow',
				'menubar=1,resizable=1,scrollbars=1,status=1,width=850,height=480'
			);
			bblearnForgotPasswordWindow.focus();

			return false;    
		});
	});
</script>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-793538-14']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</bbNG:jsBlock>

</bbNG:genericPage>