<%@ include file="/webapis/ui/doctype.jspf" %>

<%@ taglib uri="/bbNG" prefix="bbNG" %>
<%@ taglib uri="/bbUI" prefix="bbUI" %>
<%@ taglib uri="/loginUI" prefix="loginUI" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<bbNG:genericPage authentication="N" wrapper="false" onLoad="loadLoginPage()" bodyClass="login-page" globalNavigation="false">
   
<%@ include file="/webapis/ui/cookie-disclosure-login.jspf"%>
   
<bbNG:cssBlock>
<style type="text/css">
  body { background-color: #FFF; background-image: none; font-size: 10pt; }
  #loginContainer { width: 940px; margin: 0 auto; }
  div.loginBody { width: auto; margin: 0; padding: 0; background-image: none; }
  div.loginBody div.loginTop { background-color: #003399; height: 65px; overflow: hidden; }
  div.loginBody div.loginTop .search {
    display: block;
    float: right;
    margin-left: 0;
    margin-top: 9px;
    position: relative;
    text-align: center;
    width: 20%;
}
  div.loginBody div.loginTop .search input.search-query {
    border-radius: 5px;
    font-size: 1.1em;
    height: 24px;
    margin-top: 0;
    width: 100%;
  }
  div.loginBody div.loginTop .search input.searchButton {
    background: #6ad086 url("/bbcswebdav/library/login/umw/style-img.png") no-repeat scroll 7px -258px;
    border: 1px solid #6ad086;
    border-bottom-right-radius: 5px;
    border-top-right-radius: 5px;
    float: right;
    height: 26px;
    margin-left: 10px;
    padding: 0;
    position: absolute;
    right: 0;
    top: 2px;
    width: 22px;
  }
  div.loginBody div.loginTop .search input[type="text"] {
    -moz-border-bottom-colors: none;
    -moz-border-left-colors: none;
    -moz-border-right-colors: none;
    -moz-border-top-colors: none;
    border-color: #abadb3 #e2e3ea #e2e3ea;
    border-image: none;
    border-style: solid;
    border-width: 1px;
    color: #333;
    padding: 2px;
  }
  div.loginBody div.loginTop .search .search-all { margin-top: 5px; }
  div.loginBody div.loginTop .search .search-all a { color: #fff; }
  
  div.loginBody div.loginNav { background-color: #000; color: #FFF; text-align: center; padding: 8px 0; }
  div.loginBody div.loginNav a { color: #FFF; font-size: 125%; text-decoration: underline; padding: 0 10px; border-right: 1px solid #FFF; }
  div.loginBody div.loginNav a:last-child { border-right: none; }
  div.loginBody div.loginSplash { margin-bottom: 20px; }
  
  div.loginBody .receipt { text-align: center; width: 100%; padding: 15px 0; }
  
  div.loginBody div.loginCols { font-size: 125%; }
  div.loginBody div.loginCols .white { background-color: #FFF; color: #000; }
  div.loginBody div.loginCols .orange { background-color: #FF9B22; color: #000; border: 1px solid #000; padding: 15px; }
  div.loginBody div.loginCols .blue { background-color: #003399; color: #FFF; border: 1px solid #FF9B22; padding: 15px; }
  div.loginBody div.loginCols h3 { font-size: 120%; text-align: center; margin-top: 0; }
  div.loginBody div.loginCols p { line-height: 125%; margin-bottom: 20px; }
  
  div.loginBody div.loginCols .loginFormBubble { padding: 20px; background-color: #003399; color: #FFF; border: 3px solid #FF9B22; border-radius: 30px; margin-bottom: 20px;  }
  div.loginBody div.loginCols .loginFormBubble label { display: block; color: #FFF; font-weight: bold; }  
  div.loginBody div.loginCols .loginFormBubble input[type="text"], 
  div.loginBody div.loginCols .loginFormBubble input[type="password"], 
  div.loginBody div.loginCols .loginFormBubble select {
    background-color: #4F81BD;
    color: #FFF;
    border: 4px solid #385D8A;
    border-radius: 5px;
    font-size: 150%;
    width: 95%;
  }
  div.loginBody div.loginCols .loginFormBubble ul li { margin-bottom: 15px; }
  /* div.loginBody div.loginCols .loginFormBubble #entry-login { background-color: #ff9b22; color: #fff; display: block; margin: 0 auto; border: 4px solid #17375E; } */
  div.loginBody div.loginCols .loginFormBubble span.forgot { display: block; margin: 0 auto; text-align: center; }
  div.loginBody div.loginCols .loginFormBubble span.forgot a { border-bottom: none; color: #FFF; font-weight: bold; }
  
  div.loginBody div.loginCols .loginFormBubble #entry-login, div.loginBody div.loginCols a.btn { cursor: pointer; border: 1px solid #000; border-radius: 5px; background-color: #FF9B22; color: #003399; font-weight: bold; display: block; text-align: center; padding: 10px; margin: 0 auto; }
  div.loginBody div.loginCols .mission { padding: 0 20px; font-size: 85%; }
  
  div#loginAnnouncements { margin: 0; padding: 0; }
  div#loginAnnouncements ul { width: auto; }
  div#loginAnnouncements ul li { background: none; color: #000; margin: 0 0 40px 0; padding: 0; }
  div#loginAnnouncements ul li::before, div#loginAnnouncements ul li::after { box-shadow: none; }
  div#loginAnnouncements ul li strong:first-child { font-size: 100%; font-family: inherit; }

  div.loginBody div.loginFooter { padding: 10px; margin-top: 20px; text-align: center; }
  div.loginBody div.loginFooter .disclaimer { margin-bottom: 10px; }
  div.loginBody div.loginFooter .social { margin: 0; padding: 0; }
  div.loginBody div.loginFooter .social span { margin: 0; padding: 0; }
  
  .login-page div#copyright { display: block; position: relative; width: auto; top: auto; bottom: auto; left: auto; right: auto; margin: 40px auto; }
  
  a { cursor: pointer; }
  .blue a { color: #ff9b22 !important; text-decoration: none; }
  .blue a:hover { text-decoration: underline; }
  
  .tan { background-color: #FF9B22; }
  .float-left { float: left; }
  .float-right { float: right; }
  .clear { clear: both; }
  
  @media all and (max-width: 939px) {
    body { margin: 0; min-width: 400px;  }    
    #loginContainer { width: 100%; margin: 0; overflow: hidden; }
    #loginContainer .loginSplash img { width: 100%; }
    div.loginBody div.loginTop .search { width: 40%; }
    .login-page div#copyright { width: 80%; }
  }
</style>
<link rel="stylesheet" type="text/css" href="/bbcswebdav/library/login/umw/css/flexgrid.css" />
</bbNG:cssBlock>

<bbNG:jsBlock>
  <script type="text/javascript">
    function loadLoginPage() {
      if (top != self) {
        top.location.replace(self.location.href);
      }
      
      if(document.forms.login.user_id != undefined) {
        document.forms.login.user_id.focus();
      }
      
      setTimeout("triggerScreenreaderAlert()", 500);
    }

    function triggerScreenreaderAlert() {
    	if (document.getElementById('loginErrorMessage')) {
    	  $('loginErrorMessage').update($('loginErrorMessage').innerHTML);
  	  }
    }
  </script>
</bbNG:jsBlock>

<div id="loginPageContainer">
  <div id="loginPane">

    <div id="loginContainer">
      <div id="loginHeader" class="clearfix">
        <h1 class="hideoff">University of Massachusetts Medical School | Blackboard Learn</h1>
      </div>

      <div class="clearfix loginBody">
        <div class="loginTop">
          <div class="float-left"><img src="/bbcswebdav/library/login/umw/umms-formal-logo.png" /></div>     
          <div class="search">
            <form action="https://umassmed.edu/it/search-results/" method="GET" name="q">
              <input type="text" class="search-query" name="q" id="SearchKeywords" placeholder="Search" />
              <input type="submit" class="searchButton" id="SearchButton" value="" />
              <div id="searchErrMsg"></div>
            </form>
              
            <div class="search-all clearfix">
              <a href="https://umassmed.edu/it/search-results/?proxycustom=<ADVANCED/>">Search All UMMS</a>
            </div>
          </div>
          <div class="clear"></div>
        </div>
        <div class="loginNav">
          <a href="https://umassmed.edu" target="_blank">UMass Medical School</a>
          <a href="https://umassmed.edu/it/services/academic-computing/blackboard-learn/" target="_blank">Bb Learn Resources</a>
          <a href="https://umassmed.edu/it/training/" target="_blank">Training</a>
          <a href="https://umassmed.edu/it/services/academic-computing/" target="_blank">Academic Technology</a>
          <a href="https://umassmed.edu/it/security/" target="_blank">IT Security</a>
        </div>
        
        <div class="loginSplash"><img src="/bbcswebdav/library/login/umw/campus-image.jpg" /></div>
        
        <loginUI:errorMessage />
      
        <div class="loginCols row">
          <div class="col_4 white">
            <div class="loginFormBubble">
              <h3>Blackboard Learn Login</h3>
              <loginUI:loginForm loginText="Submit" forgotPasswordText="Need Your Password?" />
            </div>
            <div class="mission">
              <p>The mission of the University of Massachusetts Medical School is to advance the 
              health and well-being of the people of the Commonwealth and the world through 
              pioneering advances in education, research and health care delivery with clinical 
              partner UMass Memorial Health Care, the largest health care provider in Central 
              Massachusetts.</p>
            </div>
          </div>
          <div class="col_4 orange">
            <h3>News and Announcements</h3>
            <loginUI:systemAnnouncements maxItems="5" />
          </div>
          <div class="col_4 last blue">
            <h3>Need Help?</h3>
            <p>Monday through Friday 7:30 AM - 5:30 PM (EST):</p>
            <p>Call 508-856-8643 or email the <a href="mailto:helpdesk@umassmed.edu">UMMS Help Desk</a>. Expect to receive a response within 24 hours.</p>
            <p>Weekends, Holidays and After Hours:</p>
            <p>Call 1-855-789-7056 or visit <a href="http://umw.echelp.org" target="_blank">http://umw.echelp.org</a>.</p>
          </div>
        </div>	  
        <div class="loginFooter">
          <div class="disclaimer">This is an official page of the University of Massachusetts Medical School</div>
          <div class="social">
            <span><a href="https://twitter.com/umassmednow" target="_blank"><img src="/bbcswebdav/library/login/umw/icon-twitter.gif" /></a></span>
            <span><a href="https://feeds.feedburner.com/UmassmednowRssNewsFeed" target="_blank"><img src="/bbcswebdav/library/login/umw/icon-rss.gif" /></a></span>
            <span><a href="https://www.facebook.com/UMassMed" target="_blank"><img src="/bbcswebdav/library/login/umw/icon-facebook.gif" /></a></span>
            <span><a href="https://www.youtube.com/user/UMassMedicalSchool" target="_blank"><img src="/bbcswebdav/library/login/umw/icon-youtube.gif" /></a></span>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <bbNG:copyright />
</div>

</bbNG:genericPage>