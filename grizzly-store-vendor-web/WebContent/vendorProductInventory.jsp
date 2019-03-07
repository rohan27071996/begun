<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Vendor - Product Inventory</title>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="styles/adminListProducts.css">
	<script src="scripts/search.js" type="text/javascript"></script>
	<script src="scripts/sortlowtohighPro.js" type="text/javascript"></script>
	<script src="scripts/sortVendor.js" type="text/javascript"></script>
	<script src="scripts/searchVendor.js" type="text/javascript"></script>
	<script src="scripts/remove.js" type="text/javascript"></script>
	<script src="scripts/make.js" type="text/javascript"></script>
</head>
<body>
<div class="container-fluid">
<div class="pageheader" id="header">
<div class="row">
<div class="col-md-2">
<img src="images/nav_logo.jpg" id="plimg" >
</div>
<div class="col-md-1">
</div>
<div class="col-md-2">
<form class="navbar-form" id="head">
<div class="input-group add-on">
<input class="form-control" placeholder="Search" id="search" type="text">
<div class="input-group-btn">
<button type="submit" class="btn btn-default" id="searchbtn">
<i class="glyphicon glyphicon-search"></i>
</button>
</div>
</div>
</form>

</div>
<div class="col-md-2"></div>
<div class="col-md-1">
<i class="glyphicon glyphicon-bell notification-icon" id="bell"></i>
</div>
<div class="col-md-2" id="adname">
<h4><b>Welcome, John Doe</b></h4>


</div>
<div class="col-md-1" id="btnlog">
<form action="index.html" id="btnform">
<button type="submit" id="log" class="btn"><span>Logout</span></button>
</form>
</div>


</div>
</div>
</div>



<div class="container-fluid">
<div class="row" id="side">
<div class="col-md-3" >
<div class="sidenav" >
<div class="row" id="pro">
<div class="col-sm-4">
<p>PROFILE</p></div>
<div class="col-sm-4"></div>

</div>
<div id="imageh">
<img class="img-responsive" id="profilePicture" src="images/billgates.jpg"/>
</div>
<div id="infotext">
<p style="font-size:20px; margin-top:px;"><b>M/S John Doe</b></p>
 
<p><a href="#">
          <span class="glyphicon glyphicon-star"></span>
        </a> 4.7</p>
<p><b>Contact</b><br>978601XXXX</p>
<p><b>Address</b><br>ABCD efgh 789 </p>
 
<p> <td class="no-border"><div ><button type="button" class="button" style="background-color:#e6e6e6;opacity=1">Contact Grizzly</button></div></p>
 
 
</div>
</div>
</div>
<div class="col-md-9">
<br><br>
<ul class="nav nav-pills nav-justified">
<li class="active">
  <a data-toggle="pill" href="#product">Products</a>
  </li>
<li>
   <a data-toggle="pill" href="#vendor">Inventory</a></li>
<li>
   <a data-toggle="pill" href="#category">Profile</a></li>
</ul>
<div class="tab-content">
<div id="product" class="tab-pane fade in active">
<div class="row">
<div class="col-md-2">
<div class="dropdown" id="cdrop">
    <button class="btn btn-default dropdown-toggle" id="dropbtn" type="button" data-toggle="dropdown">Choose Action
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><a href="#">HTML</a></li>
      <li><a href="#">CSS</a></li>
      <li><a href="#">JavaScript</a></li>
    </ul>
  </div></div>
  <div class="col-md-3">
  
  <form class="form" id="head1">
<div class="input-group add-on">
<input class="form-control" placeholder="Product Name/ID" id="search1" onkeyup="catfunct()" type="text">
<div class="input-group-btn">
<button type="submit" class="btn btn-default" id="searchbtn1">
<i class="glyphicon glyphicon-search"></i>
</button>
</div>
</div>
</form>
  </div>
  <div class="col-sm-2">
  <div class="dropdown" id="cdrop1">
    <button class="btn btn-default dropdown-toggle" id="dropbtn1" type="button" data-toggle="dropdown">Sort By
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li onclick="sorttablelowtohigh()" style="cursor:pointer; padding-left:20px;">low-high</li>
      <li onclick="sorttablehightolow()" style="cursor:pointer; padding-left:20px;">high-low</li>
      <li onclick="sorttablerandom()" style="cursor:pointer; padding-left:20px;">popularity</li>
    </ul>
  </div>
  </div>
  <div class="col-sm-3"></div>
  <div class="col-sm-2">
  <form action="adminaddProduct.html" id="btnform2">
<button type="submit" id="addpro" class="btn"><span>Add Product</span></button>
</form>
  </div>
  </div>
<div>
</br>
</br>
  <div class="newtable">
<form action="adminViewProduct.html">
 <table id="tab1" class="table">
 <thead>
 
 <tr>
 <th class="no-border"></th>
 <th class="no-border">Product List</th>
 <th>ID</th>
 <th>Brand</th>
 <th>Category</th>
 <th>Rating</th>
 <th></th>
 <th class="no-border"></th>
 <th class="no-border"></th>
 </tr>
 
 </thead>
 <tbody>
 
 <tr>
 <td class="no-border">
  <div class="round">
    <input type="checkbox" id="checkbox" />
    <label for="checkbox"></label>
  </div>
</td>
 <td class="no-border">Trimmer</td>
 <td>TRX0098</td>
 <td>Phillips</td>
 <td>Personal Care</td>
 <td>4.7</td>
 <td><div ><button type="submit" class="button">View</button></div>
 <td class="no-border"><div ><button type="button" class="button" onclick="deleteRow(this)">Remove</button></div>
 <td class="no-border"><div ><button type="button" class="button">Manage</button></div>
 </tr>
 
 <tr>
 <td class="no-border">
  <div class="round">
    <input type="checkbox" id="checkbox1" />
    <label for="checkbox1"></label>
  </div>
</td>
 <td class="no-border">Shaver</td>
 <td>BS6785</td>
 <td>Braun</td>
 <td>Personal Care</td>
 <td>4.8</td>
 <td><div><button type="submit" class="button">View</button></div>
 <td class="no-border"><div ><button type="button" class="button" onclick="deleteRow(this)">Remove</button></div>
 <td class="no-border"><div ><button type="button" class="button">Manage</button></div>
 </tr> 
 
 <tr>
 <td class="no-border">
  <div class="round">
    <input type="checkbox" id="checkbox2" />
    <label for="checkbox2"></label>
  </div>
</td>
 <td class="no-border">Macbook Pro</td>
 <td>MAC4567</td>
 <td>Apple</td>
 <td>Laptop</td>
 <td>4.9</td>
 <td><div><button type="submit" class="button">View</button></div>
 <td class="no-border"><div ><button type="button" class="button" onclick="deleteRow(this)">Remove</button></div>
 <td class="no-border"><div ><button type="button" class="button">Manage</button></div>
 </tr>
 
 <tr>
 <td class="no-border">
  <div class="round">
    <input type="checkbox" id="checkbox3" />
    <label for="checkbox3"></label>
  </div>
</td>
 <td class="no-border">iMac27</td>
 <td>IMAC3452</td>
 <td>Apple</td>
 <td>Laptop</td>
 <td>4.6</td>
 <td><div ><button type="submit" class="button">View</button></div>
 <td class="no-border"><div ><button type="button" class="button" onclick="deleteRow(this)">Remove</button></div>
 <td class="no-border"><div ><button type="button" class="button">Manage</button></div>
 </tr>
 
 <tr>
 <td class="no-border">
  <div class="round">
    <input type="checkbox" id="checkbox4" />
    <label for="checkbox4"></label>
  </div>
</td>
 <td class="no-border">Micron Pens</td>
 <td>SPMP345</td>
 <td>Sakura Pigma</td>
 <td>Art Supplies</td>
 <td>4.1</td>
 <td><div ><button type="submit" class="button">View</button></div>
 <td class="no-border"><div ><button type="button" class="button" onclick="deleteRow(this)">Remove</button></div>
 <td class="no-border"><div ><button type="button" class="button">Manage</button></div>
 </tr>
 
 <tr>
 <td class="no-border">
  <div class="round">
    <input type="checkbox" id="checkbox5" />
    <label for="checkbox5"></label>
  </div>
</td>
 <td class="no-border">Paint Markers</td>
 <td>PMC4567</td>
 <td>Copic</td>
 <td>Art Supplies</td>
 <td>4.2</td>
 <td><div ><button type="submit" class="button">View</button></div>
 <td class="no-border"><div ><button type="button" class="button" onclick="deleteRow(this)">Remove</button></div>
 <td class="no-border"><div ><button type="button" class="button">Manage</button></div>
 </tr>
 
 </tbody>
 </table>
</form>
 </div>
 
</div>
</div>
<div id="vendor" class="tab-pane fade">
<div class="row">
<div class="col-md-2">
<div class="dropdown" id="cdrop">
    <button class="btn btn-default dropdown-toggle" id="dropbtn" type="button" data-toggle="dropdown">Choose Action
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><a href="#">HTML</a></li>
      <li><a href="#">CSS</a></li>
      <li><a href="#">JavaScript</a></li>
    </ul>
  </div></div>
  <div class="col-md-3">
  
  <form class="form" id="head1">
<div class="input-group add-on">
<input class="form-control" placeholder="Product Name/ID" id="search2" onkeyup="catfunct1()" type="text">
<div class="input-group-btn">
<button type="submit" class="btn btn-default" id="searchbtn1">
<i class="glyphicon glyphicon-search"></i>
</button>
</div>
</div>
</form>
  </div>
  <div class="col-sm-2">
  <div class="dropdown" id="cdrop1">
    <button class="btn btn-default dropdown-toggle" id="dropbtn1" type="button" data-toggle="dropdown">Sort By
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li onclick="sorttablelowtohigh1()" style="cursor:pointer; padding-left:20px;">low-high</li>
      <li onclick="sorttablehightolow1()" style="cursor:pointer; padding-left:20px;">high-low</li>
      <li onclick="sorttablerandom1()" style="cursor:pointer; padding-left:20px;">popularity</li>
    </ul>
  </div>
  </div>
  <div class="col-sm-3"></div>
  <div class="col-sm-2">
  <form action="adminaddProduct.html" id="btnform2">
<button type="submit" id="addpro" class="btn"><span>Add Product</span></button>
</form>
  </div>
  </div>
<div>
</br>
</br>
  <div class="newtable">
<form action="adminViewProduct.html">
 <table id="tab2" class="table">
 <thead>
 
 <tr>
 <th class="no-border"></th>
 <th class="no-border">Product List</th>
 <th>ID</th>
 <th>In Stock</th>
 <th>Req.</th>
 <th>Buffer</th>
 <th>Price/Item</th>
 <th>Pending</th>
 <th>Rating</th>
 <th></th>
 <th class="no-border"></th>
 <th class="no-border"></th>
 </tr>
 
 </thead>
 <tbody>
 
 <tr>
 <td class="no-border">
  <div class="round">
    <input type="checkbox" id="checkbox" />
    <label for="checkbox"></label>
  </div>
</td>
 <td class="no-border">Trimmer</td>
 <td>TRX0098</td>
 <td>34</td>
 <td>11</td>
 <td>45</td>
 <td>1,350.00</td>
 <td>3</td>
 <td>4.7</td>
 <td><div ><button type="submit" class="button">Manage</button></div></td>
 </tr>
 
 <tr>
 <td class="no-border">
  <div class="round">
    <input type="checkbox" id="checkbox1" />
    <label for="checkbox1"></label>
  </div>
</td>
 <td class="no-border">Shaver</td>
 <td>BS6785</td>
 <td>23</td>
 <td>10</td>
 <td>10</td>
 <td>4,700.00</td>
 <td>1</td>
 <td>4.8</td>
 <td><div ><button type="submit" class="button">Manage</button></div></td>
 </tr> 
 
 <tr>
 <td class="no-border">
  <div class="round">
    <input type="checkbox" id="checkbox2" />
    <label for="checkbox2"></label>
  </div>
</td>
 <td class="no-border">Macbook Pro</td>
 <td>MAC4567</td>
 <td>15</td>
 <td>0</td>
 <td>5</td>
 <td>1,53,000.00</td>
 <td>1</td>
 <td>4.9</td>
 <td><div ><button type="submit" class="button">Manage</button></div></td>
 </tr>
 
 <tr>
 <td class="no-border">
  <div class="round">
    <input type="checkbox" id="checkbox3" />
    <label for="checkbox3"></label>
  </div>
</td>
 <td class="no-border">iMac27</td>
 <td>IMAC3452</td>
 <td>12</td>
 <td>0</td>
 <td>5</td>
 <td>97,000.00</td>
 <td>0</td>
 <td>4.6</td>
 <td><div ><button type="submit" class="button">Manage</button></div></td>
 </tr>
 
 <tr>
 <td class="no-border">
  <div class="round">
    <input type="checkbox" id="checkbox4" />
    <label for="checkbox4"></label>
  </div>
</td>
 <td class="no-border">Micron Pens</td>
<td>SPMP345</td>
 <td>60</td>
 <td>15</td>
 <td>75</td>
 <td>450.00</td>
 <td>4</td>
 <td>4.1</td>
 <td><div ><button type="submit" class="button">Manage</button></div></td>
 </tr>
 
 <tr>
 <td class="no-border">
  <div class="round">
    <input type="checkbox" id="checkbox5" />
    <label for="checkbox5"></label>
  </div>
</td>
 <td class="no-border">Paint Markers</td>
<td>PMC4567</td>
 <td>45</td>
 <td>15</td>
 <td>60</td>
 <td>4,200.00</td>
 <td>2</td>
 <td>4.2</td>
 <td><div ><button type="submit" class="button">Manage</button></div></td>
 </tr>
 
 </tbody>
 </table>
</form>
 </div>
 
</div>
</div>
     
    </div>
</div>

</div>
</div>
</div>
</body>
</html>
