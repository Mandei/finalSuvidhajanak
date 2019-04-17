<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
      
      <%            
        response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
        response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
        response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
        response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
%> <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>HomeService- Search Result</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/styles.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>




    <nav class="navbar navbar-dark navbar-custom navbar-expand-lg  sticky-top"  >
        <div class="logo">
            <img  src="resources/images/aboutus.png" />
        </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
          
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <li>
                            <h1 class="text-white align-bottom mx-3 my-2">Home Service</h1>
                </li>
                    
                <li class="nav-item ">
                        <select style=" margin:18px" class="search-drop">
                            <option selected disabled >Search location</option>
                            <option >Hinjawadi</option>
                            <option >Baner</option>
                            <option >Pune</option>
                            <option >Wakad</option>
                        </select>
                </li>
              </ul>
                <form class="form-inline my-2 my-lg-0 ">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"><a id="nav_search_icon" class="fa fa-search" href="search.html"></a>
                    </form>
                    <form class="form-inline my-2 my-lg-0 ">
                    <div class="dropdown">
                      <button type="button" style="background-color: orange;" class="btn dropdown-toggle" data-toggle="dropdown">
                       Login/Register
                      </button>
                      <div class="dropdown-menu" style="background-color: rgb(231, 231, 218)">
                        <a class="dropdown-item" href="loginAdmin.html">Admin</a>
                        <a class="dropdown-item" href="loginUser.html">User</a>
                        <a class="dropdown-item" href="loginWorker.html">Worker</a>
                      </div>
                    </div>
                </form>
            </div>
          </nav>

          <div class="card col-9 col-md-5 mx-auto my-5">
            <div class="card-header main-search  ">
                <h3>Searched Result</h3>
                    <hr>
                <div class="row">
                    <div class="col-6"><label class="col-10">Service Type</label>:</div>
                    <div class="col-6"><label ><c:if test="${request.serviceType == 'E'}">
 								Electrical
								</c:if>
								<c:if test="${request.serviceType == 'P'}">
 								Plumbing
								</c:if>
								<c:if test="${request.serviceType == 'M'}">
 								Mechanical
								</c:if></label></div>
                </div>
               <hr style="margin:8px">
               <div class="row">
                    <div class="col-6"><label class="col-10">Vicinity </label>:</div>
                    <div class="col-6"><label >${locality}</label></div>
                </div>
                <hr style="margin:8px">
                <div class="row">
                        <div class="col-6"><label class="col-10">Number of Workers</label>:</div>
                        <div class="col-6"><label >${numOfWorkers }</label></div>
                </div>
                
            </div>
            <div class="card-body">
                <div class="table-responsive scroll-small">  
                <table class="table w-75  ">
                    <thead  >
                      <tr>
                        <th scope="col">Near-By</th>
                        <th scope="col">Available worker</th>
                      </tr>

                    </thead>
                    <tbody>
                     <c:forEach var="worker" items="${workerByLocality}">
                     <tr>
                       <td>${worker.key} :  </td>
                       <td>${worker.value }</td>
                       </tr>
                       </c:forEach>
                       
                       
                     </tbody>
                    </table> 
            </div> 
           </div>  

           <div class="card-footer">
              <a href="loginUser.html">  <button type="submit">Avail Service</button></a>
            </div> 

          </div>
        
       
    </body>
</html>