<%@ page language="java" contentType="text/html" %>
<%@include file="/WEB-INF/views/Header.jsp" %>

<head>
  <title>ShoppingWhopping.com</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="resources/css/index.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  
</head>
<body>

<div class="container">
  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
	  <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="resources/images/carasol3.jpg" alt="Los Angeles" height="100%" width="100%"">
      </div>

      <div class="item">
        <img src="resources/images/carasol1.jpg" alt="Chicago" height="100%" width="100%">
      </div>
    
      <div class="item">
        <img src="resources/images/carasol2.jpg" alt="New york" height="100%" width="100%">
      </div>
	  
	 
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<br>
 <h2><center><font face="trebuchet ms"><mark>Fashworld</mark><span class="glyphicon" style="color:#f4511e">&#xe042;</span></center></h2><br><br>

      <div class="row">
      <div class="col-md-1"></div>
      
        <div class="col-md-4">
          
            <a href="#"><img class="card-img-top" src="resources/images/ww1.jpg" ></a>
        <div class="card-body">
        <h4 class="card-title">
        <a href="/frontend/GetProductByCategory/182">Party Wear Suit</a>
        </h4>
       
        </div>
        </div>
        
        <div class="col-md-4 portfolio-item">
          
            <a href="#"><img class="card-img-top" src="resources/images/b1.jpg"></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">Boys Casual Shirt and Coat</a>
              </h4>
           
              
            </div>
          </div>
        
        <div class="col-md-3  portfolio-item">
          
            <a href="#"><img class="card-img-top" src="resources/images/Pic1.jpg" ></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">Girl's  Party Top Skirt set </a>
              </h4>
             
            
            </div>
          </div>
        </div>
        <div class="col-md-1"></div>
        <div class="col-md-4  portfolio-item">
          
            <a href="#"><img class="card-img-top" src="resources/images/mm2.jpg" ></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">Men's Casual Shirt and Coat</a>
              </h4>        
              
            </div>
          </div>
        
        <div class="col-md-4 portfolio-item">
          
            <a href="#"><img class="card-img-top" src="resources/images/New3.jpg" ></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">Velvet Saree</a>
              </h4>
             
              
            </div>
          </div>
        
        <div class="col-md-3  portfolio-item">
          
            <a href="#"><img class="card-img-top" src="resources/images/new 2.jpg" ></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">Men's Casual Shirt</a>
              </h4>
            
              
            </div>
          </div>
        </div>
        

<h2><center><font face="trebuchet ms"><mark>Trending</mark><span class="glyphicon" style="color:#f4511e">&#xe042;</span></center></h2><br><br>


 <div class="row">
      <div class="col-md-1"></div>
      
        <div class="col-md-4">
          
            <a href="#"><img class="card-img-top" src="resources/images/new4.jpg" ></a>
        <div class="card-body">
        <h4 class="card-title">
        <a href="/frontend/GetProductByCategory/182">Girl's Ethinic Wear</a>
        </h4>
       
        </div>
        </div>
        
        <div class="col-md-4 portfolio-item">
          
            <a href="#"><img class="card-img-top" src="resources/images/new7.jpg"></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">Men's Casual Shirt's</a>
              </h4>
           
              
            </div>
          </div>
        
        <div class="col-md-3  portfolio-item">
          
            <a href="#"><img class="card-img-top" src="resources/images/new6.jpg" ></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">Women Top </a>
              </h4>
             
            
            </div>
          </div>
        </div>



< <%@include file="/WEB-INF/views/footer.jsp" %>
 </body>
</html>


