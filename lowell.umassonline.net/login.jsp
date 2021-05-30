<%@ include file="/webapis/ui/doctype.jspf" %>

<%@ taglib uri="/bbNG" prefix="bbNG" %>
<%@ taglib uri="/bbUI" prefix="bbUI" %>
<%@ taglib uri="/loginUI" prefix="loginUI" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="productName" value="${ loginUI:getProductName() }" />

<bbNG:genericPage authentication="N" wrapper="false" onLoad="loadLoginPage()" bodyClass="login-page" globalNavigation="false">
   
  <%@ include file="/webapis/ui/cookie-disclosure-login.jspf"%>
  
  <bbNG:jsBlock>	

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-793538-22"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'UA-793538-22');
    </script>
  </bbNG:jsBlock>
  
  <bbNG:cssBlock>
    <style type="text/css">
      #loginContainer div.loginBody {
        background-position: center 50px;
      }
      
      .alert {
        background-color: #ffff00;
        color: #990000;
        font-weight: bold;
        margin: 0 auto 40px;
        padding: 10px 17px;
        text-align: center;
        width: 400px;
      }
      
      #loginBox {
        max-width: 400px;
        display: block;
        margin: 0 auto;
      }
      
      #loginBox p {
        font-size: 125%;
        margin-top: 40px;
      }
      
      #loginBox ul li {
        padding: 0;
      }
      
      #loginRedirectProviderList {
        display: block; 
        position: relative;
      }
      
      #loginRedirectProviderList li a {
        display: block;
        font-size: 125%;
        font-weight: bold;
        color: #FFF;
        background-color: #0469b1;
        padding: 20px 40px;
        text-decoration: none;
        border-radius: 5px;
      }
      
      #loginRedirectProviderList li a:hover, #loginRedirectProviderList li a:focus {
        background-color: #000;
        text-decoration: none;
      }

      h3.hilite {
        margin: 0 auto;
        padding: 20px 40px;
        background-color: #FF9;
        color: #000;
        font-weight: bold;
        font-size: 200%;
        text-align: center;
      }

      #loginBox.downtime {
        max-width: 800px; 
        width: 100%;
        background-color: #cfe2ff;
        border: 1px solid #b6d4fe;
        border-radius: 10px;
        padding: 0 40px 40px 40px;
      }
    </style>
  </bbNG:cssBlock>  

  <div id="loginPageContainer">
    <div id="loginPane">
      <div id="loginContainer">
        <div id="loginHeader" class="clearfix">
          <h1 class="hideoff">${productName}</h1>
          <bbNG:image src="/images/ci/logos/Bb_newLogo_060.png" alt="${productName}" class="productLogo" />
          <loginUI:accessibility />
        </div>

        <div id="loginLang" class="clearfix">
          <loginUI:localePicker />
        </div>

        <div class="clearfix loginBody" style="padding-top: 190px;">          
          <loginUI:errorMessage />

          <div id="loginBox" class="downtime">
            <p>On-Campus Blackboard is disabled for emergency maintenance<br>
            until Tuesday, June 1 at noon (EST). Please accept our apologies 
            for any inconvenience caused.</p>
            <p>Regrettably, we must take emergency action and disable access 
            to On-Campus Blackboard from Friday, May 28 at 10pm to 
            Tuesday, June 1 at noon (EST). Following our migration to SaaS last week, 
            we began to recognize inconsistencies in our spring 2021 course copies 
            (e.g., missing content, students, grades). Blackboard has identified a 
            building block that caused the errors and they have disabled the building 
            block on our instance. We had to take immediate action to avoid problems 
            for students with incompletes or faculty who were planning to copy content 
            from spring 2021 to summer or fall. Additionally, faculty annotations may 
            not appear in the spring 2021 restores until June 4. Please accept our 
            apologies for any inconvenience caused.</p>
            <p>This maintenance window does not impact summer classes supported by GPS.</p>
            <p><strong>For faculty:</strong>
            We have also paused our fall 2021 course development process until this 
            issue has been resolved. We plan to restart the copy process when we reopen. 
            If you have requested content, the request will execute when the system 
            resumes by late afternoon on June 1.</p>
          </div>
        </div>

        <loginUI:welcomeArea />        
      </div>
    </div>
    
    <loginUI:systemAnnouncements maxItems="5" />

    <bbNG:copyright />
  </div>

</bbNG:genericPage>