<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" media="screen" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<title>Pension Disbursement</title>
	<style>
	body{
    background-image: url(images/loginbgnewBW.jpg);
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
    
}



.container-fluid{
    padding: 0px 15px;
}


.fa-hand-holding-usd , .fa-info-circle, .fa-user-plus{
/*    color: white;*/
    padding-right: 5px;
}


/* Pensioner Details Form Styling*/

.pension-form{
    width: 40%;
    margin-top: 2%;
    margin-left: 15%;
    position:absolute;
     border-radius: 5px;
     left:17%;
  background-color: black;
  opacity:0.7;
  color:white;
  padding: 20px;
}

input, select {
  width: 100%;
  padding: 6px 16px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

  .btn-submit{
  width: 35%;
  background-color: lightgrey;
  color: black;
  padding: 14px 20px;
  margin: 8px 0;
  margin-top: 30px;
  margin-left: 170px;

  border: none;
  border-radius: 4px;
  cursor: pointer;
}

.btn-submit:hover {
  background-color: white;
}

	
	
	</style>
</head>

<body>

        <!--   Navbar starts here-->
    <div id="navbar" class="navbar-wrapper">
        <div class="container">
            <nav class="navbar navbar-inverse navbar-transparent">
        <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header " >
       
        <a  class="navbar-brand " href="#"><i class="fas fa fa-hand-holding-usd"></i>Pension Management Portal</a>
        
        <!--<i class="fa fas fa-home fa-lg"></i>-->
        
        </div>

       
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><i class="fas fa fa-info-circle"></i>About</a></li>
        <li><a href="/logout">
          <i class="fa fa-user-plus  "></i>Logout</a>
        </li>
       
        </ul>
        </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
        </div>
    </div>
<!--Navbar ends here    -->
    
 
    
    
       
<!--    Disbursement Form Starts Here-->

   <!--   <div class="pension-form">
    <form:form action="/evaluate" method="post" modelAttribute="processPensionInput">


       		<form:label path="aadharNumber">Aadhaar Number </form:label>
            <form:input path="aadharNumber" value='${aadhaar}'   length="12" required="required"/><br/>
 
            <form:label path="pensionAmount">Pension Amount</form:label>
            <form:input path="pensionAmount" value='${amount}'   required="required"/><br/>
            
             <form:label path="bankCharge">Bank Charge</form:label>
            <form:input path="bankCharge"     required="required"/><br/>
       
       
        	<input type="submit" class="btn btn-submit "value="Proceed To Disbursement" >
			
       
  	</form:form>
		</div>
  
  -->
      <div class="pension-form">
    <form action="/evaluate" method="post" >


       		<label >Aadhaar Number </label>
            <input  value='${aadhaar}'   length="12" required="required" readonly style="color:grey;"><br/>
 
            <label >Pension Amount</label>
            <input  value='${amount}'   required="required" readonly style="color:grey;"><br/>
            
             <label >Bank Charge</label>
            <input name="bankcharge" required="required" type="number" value="${bankcharge}" placeholder="Enter BankCharge" style="color:grey;"><br/>
       
      		<input name="aadhaar" value='${aadhaar}'   length="12" required="required" hidden style="color:grey;"><br/>
 
           
            <input name="amount" value='${amount}'  required="required" hidden style="color:grey;"><br/>
       
       
        	<input type="submit" class="btn btn-submit "value="Proceed To Disbursement" >
			
       
  	<form>
		</div>
  
  
                
<!--    Disbursement Form Ends Here-->
    
    
</body>
</html>