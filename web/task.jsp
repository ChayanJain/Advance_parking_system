<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>

.bg{
	background-color: #AFEEEE;
	margin-top:30px;
	padding-top:30px;
	padding-bottom:140px;
}
.pannel{
background-color: white !important;
padding-top:20px;
padding-bottom:20px;
margin:10px;
border: 1px solid #fff;
border-radius: 5px !important;
transition: box-shadow 0.5s;
}
.pannel-hover{

box-shadow: 5px 0px 40px rgba(0, 0, 0, .2);
}

</style>

</head>

<body>

<%@ include file="headder.jsp"%>
<section class="bg">
<div class="container text-center">
<h1>User here is all task assingned to you</h1>
<div class="row">
<div class="col-md-8">
<div class="pannel">
<p>SAMPLE TASK: Forward bank account details to HR playlist_add lens
</p>
</div>
<div class="pannel">
<p>SAMPLE TASK: Forward bank account details to HR playlist_add lens
</p>
</div>
<div class="pannel">
<p>SAMPLE TASK: Forward bank account details to HR playlist_add
lens</p>
</div>
</div>
<div class="col-md-4">
<div class="pannel" style="margin-top:40px">
<h2>Hello in pannel</h2>
<p>Make your tasks with due dates visible on your preferred calendar</p>
</div>

</div>
</div>
</div>
</section>

</body>
</html>