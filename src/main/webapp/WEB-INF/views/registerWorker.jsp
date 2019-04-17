<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Register-Worker</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/styles.css"/>
    <link rel="stylesheet" href="resources/css/registrationStyles.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    
</head>
<body class="worker-body">
    <nav class="navbar navbar-custom navbar-expand-lg navbar-dark sticky-top"  >
        <div class="logo">
            <a href="index.html">  <img  src="resources/images/aboutus.png" height="60px" width="60px"/></a>
        </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
          
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <li>
                            <h1 class="text-white align-bottom mx-3 my-2">Home Service</h1>
                </li>
                    
               
              </ul>
                <form class="form-inline my-2 my-lg-0 ">
                    <a href="loginWorker.html" class="btn btn-primary btn-sm">
                        <span class="fa fa-sign-out my-2 mr-3"></span> Log in
                    </a>
                        
                </form>
            </div>
          </nav>
          
         
          
          
    
        <form action="registerWorker.html" method="post" onsubmit="return validation()">
          <div class="container">
            <div class="row">
                <div class="col-md-10 offset=md-1">
                    <div class="row">
                        <div class="col-md-5 register-left">
                            <img src="resources/images/worker-logo.png"/>
                            <h3>Join us</h3>
                            <p>Get homeservices</p>
                            <button type="button" class="btn btn-primary">About us</button>
                        </div>
                        <div class="col-md-7 register-right">
                            <h2>Worker Register Here</h2>
                            <div class="register-form">
                              <div class="form-group">
                                    <input required  type="text" name="firstName" id="firstName" value="${worker.firstName }" class="form-control" placeholder="First name"/>
                                    <span id="fname" class="text-danger font-weight-bold"></span>
                                  </div>
                                <div class="form-group">
                                    <input required type="text" name="lastName" id="lastName" value="${worker.lastName }" class="form-control" placeholder="Last name"/>
                                    <span id="lname" class="text-danger font-weight-bold"></span>
                                </div>
                                <div class="form-group">
                                    <input required  type="text" name="email" id="email"  class="form-control" placeholder="Email"/>
                                    <span id="emailId" class="text-danger font-weight-bold"></span>
                                </div>
                                <div class="form-group">
                                    <input required type="text" name="contactNumber"  id="contactNumber" value="${worker.contactNumber }"  class="form-control" placeholder="Contact"/>
                                    <span id="contactNo" class="text-danger font-weight-bold"></span>
                                   <!-- // minlength=10 maxlength=10 -->
                                  </div>
                                <div class="form-group">
                                    <input required type="password"  name="pwd" id="pwd" class="form-control" placeholder="Password"/>
                                    <span id="password" class="text-danger font-weight-bold"></span>
                               </div>
                                <div class="form-group">
                                    <input required type="password" name="conpswd"  id="conpwd" class="form-control" placeholder="Re-Enter Password"/>
                                    <span id="confirmpwd" class="text-danger font-weight-bold"></span>
                                  </div>
                               <div class="form-group">
                                <input required type="text" name="locality" value="${worker.locality }"  class="form-control" placeholder="Locality"/>
                                <span id="address" class="text-danger font-weight-bold"></span>
                            </div>
                                <div class="form-group">
                                        <p>Skill</p>
                                            <div class="form-check-inline">
                                                <label class="form-check-label" for="check1">
                                                <input  type="checkbox" class="form-check-input" id="check1" name="M" value="M" checked>Mechanical
                                                </label>
                                            </div>
                                            <div class="form-check-inline">
                                                <label class="form-check-label" for="check2">
                                                <input type="checkbox" class="form-check-input" id="check2" name="E" value="E">Electrician
                                                </label>
                                            </div>
                                            <div class="form-check-inline">
                                                <label class="form-check-label">
                                                <input type="checkbox" class="form-check-input" id="check2" name="P" value="P">Plumber
                                                </label>
                                            </div>
                                    </div>
                                    <input type="submit" name="submit" value="Register" class="btn btn-worker">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      </form> 
        <footer class="page-footer font-small special-color-dark pt-4"  >
            <!-- Footer Elements -->
            <div class="container ">
        
              <!-- Social buttons -->
              <ul class="list-unstyled list-inline text-center">
                <li class="list-inline-item">
                  <a class="btn-floating btn-fb mx-1">
                    <i class="fa fa-twitter fa-2x"> </i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a class="btn-floating btn-gplus mx-1">
                    <i class="fa fa-facebook fa-2x"> </i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a class="btn-floating btn-li mx-1">
                    <i class="fa fa-instagram fa-2x"> </i>
                  </a>
                </li>
              
              </ul>
              <!-- Social buttons -->
        
            </div>
            <!-- Footer Elements -->
        
            <!-- Copyright -->
            <div class="footer-copyright text-center py-3">© 2018 Copyright : Home Service
            </div>
            <!-- Copyright -->
        
          </footer>
          <!-- Footer -->
        
     
</body>

<script>

function validation(){
    var firstname1=document.getElementById('firstName').value;
    var lastname=document.getElementById('lastName').value; 
    var Email=document.getElementById('email').value; 
    var contact=document.getElementById('contactNumber').value;
    var pswd=document.getElementById('pwd').value;
    var conpswd=document.getElementById('conpwd').value;  
                

   /*  if(firstname1==""){
        document.getElementById('fname').innerHTML="**Please fill the first name field";
        
        return false;
    } */
    if((firstname1.length <= 2) || (firstname1.length > 20))
    {
    	 
            document.getElementById('fname').innerHTML="**First name length must be between 2 and 20";
            document.getElementById('firstName').style.border="2px solid red";
            return false;

    }
   
    else if(!isNaN(firstname1)){
        document.getElementById('fname').innerHTML="**First name can't be a number. Please write valid name";
        document.getElementById('firstName').style.border="2px solid red";

        return false;
    }
    else
    {
        document.getElementById('fname').innerHTML=" ";
        document.getElementById('firstName').style.border="2px solid green";


    }

    
     /* if(lastname==""){
        document.getElementById('lname').innerHTML="**Please fill the last name field";
        return false;
    } */
    
     if((lastname.length <= 2) || (lastname.length > 20)) {
        document.getElementById('lname').innerHTML="**Last name length must be between 2 and 20";
        document.getElementById('lastName').style.border="2px solid red";

        return false;
    }
   
     else if(!isNaN(lastname)){
        document.getElementById('lname').innerHTML="**Last name can't be a number. Please write valid name";
        document.getElementById('lastName').style.border="2px solid red";

        return false;
    }
    else 
    {
        document.getElementById('lname').innerHTML=" ";
        document.getElementById('lastName').style.border="2px solid green";


    }
 
    /* if(Email==""){
        document.getElementById('emailId').innerHTML="**Please fill the email id field";
        return false;
    } */
    
    if(Email.indexOf('@')<=0){
        document.getElementById('emailId').innerHTML="**@ Invalid position";
        document.getElementById('email').style.border="2px solid red";

        return false;
    }
    
    
    else if((Email.charAt(Email.length-4)!='.') && (Email.charAt(Email.length-3)!='.')){
        document.getElementById('emailId').innerHTML="** Invalid email id";
        document.getElementById('email').style.border="2px solid red";

        return false;
    }
    else
    {
        document.getElementById('emailId').innerHTML=" ";
        document.getElementById('email').style.border="2px solid green";


    }


    /* if(contact==""){
        document.getElementById('contactNo').innerHTML="**Please fill the contact field";
        return false;
    } */
    
    
    if(isNaN(contact)){
        document.getElementById('contactNo').innerHTML="**Mobile number can't be a character, please write a valid mobile number.";
        document.getElementById('contactNumber').style.border="2px solid red";

        return false;
    }
   
    else if(contact.length!=10){
        document.getElementById('contactNo').innerHTML="**Invalid mobile number , mobile number must consist of 10 digits."; 
        document.getElementById('contactNumber').style.border="2px solid red";

        return false;
    }
    else
    {
        document.getElementById('contactNo').innerHTML=" ";
        document.getElementById('contactNumber').style.border="2px solid green";
    }



   /*  if(pswd==""){
        document.getElementById('password').innerHTML="**Please fill the password field";
        return false;
    }
     */
    if((pswd.length <= 6) || (pswd.length > 20)) {
        document.getElementById('password').innerHTML="**Password length must be between 6 and 20";
        document.getElementById('pwd').style.border="2px solid red";

        return false;
    }
    else
    {
        document.getElementById('password').innerHTML=" ";
        document.getElementById('pwd').style.border="2px solid green";


    }


    /* if(conpswd==""){
        document.getElementById('confirmpwd').innerHTML="**Please fill the confirm password field";
        return false;
    }
     */
    
    if(pswd!=conpswd){
        document.getElementById('confirmpwd').innerHTML="**Password is not matching with confirm password";
        document.getElementById('confpwd').style.border="2px solid red";

        return false;
    } 
    
    else
    {
        document.getElementById('confirmpwd').innerHTML=" ";
        document.getElementById('confpwd').style.border="2px solid green";


    }
 
     /**/
    alert("Your details are submitted successfully’.");
   	return true;
 
 }
 
</script>

</html>