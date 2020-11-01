<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Feedback | Add Feedback</title>
<link rel="stylesheet" href="css/util.css">
<link rel="stylesheet" href="css/addFeedback.css">
<script type="text/javascript">
  $(document).ready(function($) {
      //alert("JQuery works");
  });
      $(function(){ 
           $("#name_error_message").hide();
           $("#email_error_message").hide();
           $("#mobile_error_message").hide();
           $("#feedback_error_message").hide();
           
           var error_name=false;
           var error_email=false;
           var error_mobile=false;
           var error_feedback=false;
           
           
           $("#name").focusout(function(){
              check_name(); 
           });
           
           $("#email").focusout(function(){
              check_email(); 
           });
           $("#mobile").focusout(function(){
               check_mobile(); 
            });
           $("#feedback").focusout(function(){
               check_feedback(); 
            });
            
  
          function check_name(){
              var name_length=$("#name").val().length;
              if(name_length < 1){
              	$("#name_error_message").html("user name required..");
                  $("#name_error_message").show();
                  error_name=true;
                  
              }else{
              	$("#name_error_message").hide();
              }
          }
          
          function check_email(){
              var email_length=$("#email").val().length;
             
              if(email_length < 1){
              	$("#email_error_message").html("email required..");
                  $("#email_error_message").show();
                  error_email=true;
                  
              }else{
              	$("#email_error_message").hide();
              }
          }
          function check_mobile(){
              var mob = /^[1-9]{1}[0-9]{9}$/;
              var mobile_no=$("#mobile").val();
              
              if (mob.test(mobile_no) === false) {
                  $("#mobile_error_message").html("please enter valid mobile number ..");
                  $("#mobile_error_message").show();
                  error_mobile=true;
              }else{
                  $("#mobile_error_message").hide();
              }
          }
          
          function check_feedback(){
              var feedback_length=$("#feedback").val().length;
              if(feedback_length < 1){
              	$("#feedback_error_message").html("feedback required..");
                  $("#feedback_error_message").show();
                  error_feedback=true;
                  
              }else{
              	$("#feedback_error_message").hide();
              }
          }
          
          
          $("#feedbackForm").submit(function(){ 
            error_name=false;
            error_mobile=false;
            error_email=false;
            error_feedback=false;
            
            check_name(); 
            check_email();
            check_mobile();
            check_feedback();
             
            if(error_name == false && error_mobile == false && error_email == false && error_feedback == false){
                return true;
            }else{
                return false;
            }  
         }); 
  
      });    
  
  </script>
<style>
.btn {
  display: inline-block;
  border: none;
  background: var(--dark-color);
  color: #fff;
  padding: 0.5rem 1.5rem;
}
.error{
  margin: -20px 0px;
  paddind:-10px 0px;
  font-size:14px;
  color:red;
  }
</style>
</head>
<body>
<div>

<div><a href="/">Home</a></br></div>
			<form:form action="/saveFeedback" method="post" id="feedbackForm" modelAttribute="feedback">
			
			
			 
			                                            
			       <section id="main-contant">
    
            <div id="container">
      <div class="form-wrap">  
      <div><span id="message" style="color:${msgBgColor}; font-size:14px;">
			                                                <c:if test="${not empty message}">
			                                                   ${message}
			                                                </c:if>
			                                            </span></div>                                   
			  <div class="form-group">                                          
			<div class="error_form" id="name_error_message"></div>
			
			<form:label path="name">Name</form:label>
			<form:input path="name" type="text" id="name" name="name"/>
			<form:errors path="name" class="error"/>
			</div>
			<div class="form-group">
			<div class="error_form" id="email_error_message"></div>
			
			<form:label path="email">Email</form:label>
			<form:input path="email" type="text" id="email" name="email"/>
			<form:errors path="email" class="error"/>
			</div>
			
			<div class="form-group">
			<div class="error_form" id="mobile_error_message"></div>
			
			<form:label path="mobile">Mobile</form:label>
			<form:input path="mobile" type="text" id="mobile" name="mobile"/>
			<form:errors path="mobile" class="error"/>
			</div>
			<div class="form-group">
			<div class="error_form" id="feedback_error_message"></div>
			
			<form:label path="feedback">Feedback</form:label>
			<form:textarea path="feedback" rows="6" cols="40" id="feedback" name="feedback"></form:textarea>
			<form:errors path="feedback" class="error"/>
			</div>
			
			
			<button type="submit"  >Save Feedback</button>
			
			</div>
			</div>
			</section>
			
			</form:form>
</div>
</body>
</html>