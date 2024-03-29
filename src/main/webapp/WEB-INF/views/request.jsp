<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
      
      <%            
        response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
        response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
        response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
        response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Request ${service}</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="resources/css/styles.css"/>
    <link rel="stylesheet" href="resources/css/userStyles.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    
</head>
<body>

<c:if test="${not empty user.userId}">

        <div>
                <nav class="navbar  navbar-custom  navbar-expand-lg  fixed-top "  >
                    <a href="userPanel.html"> 
                    <div class="logo">
                        <img  src="resources/images/aboutus.png" />
                    </div>
                    </a>
                        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                          <span class="navbar-toggler-icon"></span>
                        </button>
                      
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                          <ul class="navbar-nav mr-auto">
                            <li>
                                        <h1 class="text-white align-bottom mx-3 my-2">Home Service</h1>
                            </li>
                                
                            
                          </ul>
                          
                            <form class="form-inline my-2 my-lg-0 ">
                                <input class="search " type="search" placeholder="Search" aria-label="Search"><a><i id="nav_search_icon" class="fa fa-search" href="search.html"></i></a>
        
                                <div class="btn-group show-on-hover" >
                                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                                <a href="#" class="notification mg-35 ">
                                                        <span><i class="fa fa-bell"></i></span>
                                                        <span class="badge">0</span>
                                                </a>
                                            <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu" style="padding: 25px; background-color: rgb(88, 103, 133);max-height:350px;overflow-y: auto;"  role="menu">
                                <li style="width:200px;"><a href="#" style="color: white" >Irfan has accept your request</a></li>
                                <hr>
                                <li style="width:200px;"><a href="#" style="color: white" >Irfan has accept your request</a></li>
                                 <hr>
                                 <li style="width:200px;"><a href="#" style="color:white" >Irfan has accept your request</a></li>
                                 <hr>
                                 <li style="width:200px;"><a href="#" style="color: white" >Irfan has accept your request</a></li>
                                 <hr>
                                 <li style="width:200px;"><a href="#" style="color: white" >Irfan has accept your request</a></li>
                        </ul>
                                </div>
                                
                               
                                <a href="logout.html" class="btn logout-btn btn-sm">
                                    <span class="fa fa-sign-out my-2 mr-3"></span> Log out
                                </a>
                                    
                            </form>
                         
                        </div>
                      </nav>
                </div>

                <button class="toggle_btn hide-large" onclick="openSidebar()" >&#9776;</button>
                <div class="sidenav sidenav-collapse  "  id="mySidenav">
                  
                    <a href="javascript:void(0)" class="closebtn hide-large" onclick="closeSidebar()" >&times;</a>
                    <div class="d-inline-flex  "> 
                    <img src="resources/images/profile.png"  class="profile_pic"> <label class="p-2">${user.firstName } <br><small>User</small> </label>
                    </div>
  
                    <a href="userPanel.html">Dashboard</a>
                    <a href="userPanelProfile.html">Profile</a>
                    <a href="userRequestStatus.html">Request status</a>
                </div> 
  
               
<div class="content">
   <div class="jumbotron  col-6 mx-auto my-4" style="background-color: rgb(58, 59, 61);margin-top:12%">
        <div class="container"  >
                <h1 style="color: white; margin-top: -30px;">Request</h1>
                <br>
               <form action="#" onsubmit="return checkRequest()">
            
            	<div class="form-group ">
                    <label for="date" style="color: white">Date:</label>
                    <input id="datefield" type='date' min='1899-01-01'  class="form-control"   name="date" required>
                    
                  </div><br>
            <div class="form-inline" style="color: white">
                    &nbsp;&nbsp;From&nbsp;&nbsp;<input type="time" style="width: 175px" class="form-control" id="fromTime"  name="fromTime" required>
                    &nbsp;&nbsp;To&nbsp;&nbsp;  <input type="time" style="width:175px" class="form-control" id="toTime"  name="toTime" required>
                   </div>
                   <p id="display" class="text-danger ml-5 mt-2"></p>
                   <div class="form-group">
				  <label for="time" style="color: white">Location:</label>
				  <input type="text" class="form-control" name="locality" placeholder="Locality" required>
				  <input type="hidden" name="serviceType" value="${service}">
				  <input type="hidden" name="userId" value="${user.userId}">
				  
				  </div>
                   <div class="form-group">
                        <label for="description" style="color: white">Description: </label>
                        <textarea class="form-control" name="description"></textarea>
                  </div>
                  <button type="submit" class="btn btn-warning">Submit</button>
            
         </form> 
              </div>
            </div>
    </div>

</c:if>
 
   <c:if test="${empty user.userId}">
 <center><button type="submit"  class="btn btn-danger"> <a href="index.html" >Please Login First</a></button></center>
  </c:if>    
</body>

<script src="resources/js/adminPanel.js"></script>

<script>
var today = new Date();
var dd = today.getDate()+1;
var mm = today.getMonth()+1; //January is 0!
var yyyy = today.getFullYear();
 if(dd<10){
        dd='0'+dd
    } 
    if(mm<10){
        mm='0'+mm
    } 

today = yyyy+'-'+mm+'-'+dd;
document.getElementById("datefield").setAttribute("min", today);



function checkRequest()
{
var from=document.getElementById("fromTime").value;
var to=document.getElementById("toTime").value;
var fromArray=new Array();
var toArray=new Array();
fromArray=from.split(":");
toArray=to.split(":");
fromHour=parseInt(fromArray[0]);
tohour=parseInt(toArray[0]);
// document.getElementById("dateshow").innerHTML=fromArray[0]+toArray[0];
if(tohour<fromHour)
{
document.getElementById("display").innerHTML=" 'to' field value  must be greater";
return false;
}

else if(tohour==fromHour)
{
if(parseInt(fromArray[1])<=parseInt(toArray[1]))
	  return true;
else
{
document.getElementById("display").innerHTML="'to' field value  must be greater";
return false;
}
}
return true;

}
</script>

</html>