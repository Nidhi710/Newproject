<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
 <style>

  #section0 {padding-top:0px;height:80px;color: #fff; background-color: #666699;}
 #section1 {padding-top:50px;height:700px;color: #fff; background-color: #669999;}
  #section2 {padding-top:50px;height:600px;color: #fff; background-color: #990000;}
  #section3 {padding-top:60px;height:600px;color: #fff; background-color: #666699;}
  #section4 {padding-top:50px;height:600px;color: #fff; background-color: #009688;}
  /* #section42 {padding-top:50px;height:500px;color: #fff; background-color: #990000;} */
   
  
  
  </style> 
  

<body>
 <!-- <div ng-controller="HomeController as homeCtrl">
 <div ng-hide="currentUser==''">
   Welcome:{{currentUser.username}}
   role:{{currentUser.role}}
</div>
</div> -->

<div id="section0" class="container-fluid">
  <div class="col-xs-17 col-md-8"> 
  <div ng-controller="HomeController as homeCtrl">
 <div ng-hide="currentUser==''">
  <!--  Welcome:{{currentUser.username}}
   role:{{currentUser.role}} -->
</div>
<h3>welcome: ${currentUserName}</h3>
</div>
  </div> 
  
</div>
<div id="section1" class="container-fluid"> 
<img src="resources/images/banner cantinho do blog.png" alt="Flower">
 

</br>

 <!-- <img src="resources/images/camera-shiraz-md.png" alt="Flower">
 <img src="resources/images/hand-holding-a-mobile_459-99.jpg" alt="Flower"> -->

     
</div>  
</div>

<div id="section2" class="container-fluid">
 <h1>Blog</h1> 
  <!-- <div class="wrapper">
    <div class="line"></div>
    <div class="circle-2">
       
    </div>
    <div class="circle">
        Qeep
    </div> -->
<!--   <p>Blog</p>
<b>
  <span1>
    your profile<br /> 
    your blog<br />
    your passion<br />
    your friends<br />
    
    </span1>
</b>
 
  -->


<div class="container">
    <div class="row">
        <div class="col-md-4">
            <!-- begin panel group -->
            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                
                <!-- panel 1 -->
                <div class="panel panel-default">
                    <!--wrap panel heading in span to trigger image change as well as collapse -->
                    <span class="side-tab" data-target="#tab1" data-toggle="tab" role="tab" aria-expanded="false">
                        <div class="panel-heading" role="tab" id="headingOne"data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                            <h4 class="panel-title">Blog1</h4>
                        </div>
                    </span>
                    
                    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body">
                        <!-- Tab content goes here -->
                        blog!
                          </div>
                    </div>
                </div> 
                <!-- / panel 1 -->
                
                <!-- panel 2 -->
                <div class="panel panel-default">
                    <!--wrap panel heading in span to trigger image change as well as collapse -->
                    <span class="side-tab" data-target="#tab2" data-toggle="tab" role="tab" aria-expanded="false">
                        <div class="panel-heading" role="tab" id="headingTwo" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                            <h4 class="panel-title collapsed">Blog2</h4>
                        </div>
                    </span>

                    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                        <div class="panel-body">
                        <!-- Tab content goes here -->
                        BRANDS
                        </div>
                    </div>
                </div>
                <!-- / panel 2 -->
                
                <!--  panel 3 -->
                <div class="panel panel-default">
                    <!--wrap panel heading in span to trigger image change as well as collapse -->
                    <span class="side-tab" data-target="#tab3" data-toggle="tab" role="tab" aria-expanded="false">
                        <div class="panel-heading" role="tab" id="headingThree"  class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                            <h4 class="panel-title">Blog3 </h4>
                        </div>
                    </span>

                        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                          <div class="panel-body">
                          <!-- tab content goes here -->
                           NEAPVAGIAMI
                          </div>
                        </div>
                      </div>
            </div> <!-- / panel-group -->
             
        </div> <!-- /col-md-4 -->
        
        <div class="col-md-8">
            <!-- begin macbook pro mockup -->
            <div class="md-macbook-pro md-glare">
                <div class="md-lid">
                    <div class="md-camera"></div>
                    <div class="md-screen">
                    <!-- content goes here -->                
                        <div class="tab-featured-image">
                            <div class="tab-content">
                                <div class="tab-pane  in active" id="tab1">
                                        <img src="resources/images/blog (1).png" alt="tab1" class="img img-responsive">
                                </div>
                                <div class="tab-pane " id="tab2">
                                    
                                        <img src="resources/images/a547455f3802b687751997660e0e6964.jpg">
                                    
                                </div>
                                <div class="tab-pane fade" id="tab3">
                                    
                                        <img src="resources/images/5b862162db414173b5dff4a549bed8a5.jpg">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="md-base"></div>
            </div> <!-- end macbook pro mockup -->



        </div> <!-- / .col-md-8 -->
    </div> <!--/ .row -->
</div> <!-- end sidetab container -->
 </div>
<div id="section3" class="container-fluid">
  <h1>Event</h1>
  <img src="resources/images/hands in the air header.png">
</div>
<div id="section4" class="container-fluid">
<div class="col-sm-5">

  <h1>Join millions of others</h1>
   <p>Whether sharing your expertise, breaking news, or whatever is on your mind, you are in good company with our friends </p>
</div>
  <div class="col-sm-4">
  <img src="resources/images/Cpb1a7HVUAIEFRJ.png" alt="Flower">
  </div>
  
</div>

</body>
</html>