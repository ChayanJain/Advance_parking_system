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
.bg {
	background-color: #AFEEEE;
	margin-top: 30px;
	padding-top: 30px;
	padding-bottom: 100px;
}

.well {
	background-color: #fff !important;
	padding-bottom: 30px;
	padding-top: 100px;
	border: 0.5px solid grey !important;
	border-radius: 5px !important;
	transition: box-shadow 0.5s;
}

.pannel {
	background-color: white !important;
	padding-top: 20px;
	padding-bottom: 20px;
	margin-bottom: 10px;
	border: 0.5px solid grey !important;
	border-radius: 5px !important;
	transition: box-shadow 0.5s;
}

.panel:hover {
	box-shadow: 15px 0px 40px black;
}

.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	padding-top: 100px; /* Location of the box */
	overflow: auto; /* Enable scroll if needed */
}

.close {
	color: black;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: red;
	text-decoration: none;
	cursor: pointer;
}

.btn-default{
boder:none;
width:100%;
background-color:white !important;
border-color:white !important;

}
.btn-default:hover{
cursor: pointer;
color:blue !important;


}
.btn-default:focus,
.btn-default:active{
box-shadow:none!important;
 
//not working
}

</style>

</head>
<body>
	<%@include file="headder.jsp"%>
	<section class="bg">

		<div class="container text-center">
			<h1>Task Board</h1>
			<div class="row">
				<div class="col-md-4">
					<div class="well">
						<div class="page-header "style="padding-top: 0px;">
							<h3>Planned task</h3>
							<button type="button" class="btn btn-default"
							data-toggle="modal" data-target="#myModal">+ Add Task</button>
							
						</div>
						
						<!-- Modal -->
						<div class="modal fade" id="myModal" role="dialog">
							<div class="modal-dialog">

								<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title text-left">Planned task</h4>
									</div>
									<div class="modal-body">
										<textarea class="form-control" rows="5" id="comment"></textarea>
										<div class="text-right">
											<br>
											<button type="button" class="btn "
												data-dismiss="modal">Close</button>
										</div>
									</div>

								</div>

							</div>
						</div>

						<div class="pannel">

							<h4>SAMPLE TASK: Forward bank account details to HR
								playlist_add lens</h4>
						</div>
						<div class="pannel">

							<h4>SAMPLE TASK: Forward bank account details to HR
								playlist_add lens</h4>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="well">
						<div class="page-header">
							<h3>Task in progress</h3>
							<button type="button" class="btn btn-default"
							data-toggle="modal" data-target="#progress">Add Task</button>
						</div>


						<!-- Modal -->
						<div class="modal fade" id="progress" role="dialog">
							<div class="modal-dialog">

								<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title text-left">Task in progress</h4>
									</div>
									<div class="modal-body">
										<textarea class="form-control" rows="5" id="comment"></textarea>
										<div class="modal-footer">
											<br>
											<button type="button" class="btn "
												data-dismiss="modal">Close</button>
										</div>
									</div>

								</div>

							</div>
						</div>

						<div class="pannel">

							<h4>SAMPLE TASK: Forward bank account details to HR
								playlist_add lens</h4>
						</div>
						<div class="pannel">

							<h4>SAMPLE TASK: Forward bank account details to HR
								playlist_add lens</h4>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="well">
						<div class="page-header pt-0">
							<h3>Completed task</h3>
							<button type="button" class="btn  btn-default"
							data-toggle="modal" data-target="#completed">Add Task</button>
							
						</div>

						
						<!-- Modal -->
						<div class="modal fade" id="completed" role="dialog">
							<div class="modal-dialog">

								<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title text-left">Completed</h4>
									</div>
									<div class="modal-body">
										<textarea class="form-control" rows="5" id="comment"></textarea>
										<div class="text-right">
											<br>
											<button type="button" class="btn "
												data-dismiss="modal">Close</button>
										</div>
									</div>

								</div>

							</div>
						</div>
						<div class="pannel">

							<h4>SAMPLE TASK: Forward bank account details to HR
								playlist_add lens</h4>
						</div>
						<div class="pannel">

							<h4>SAMPLE TASK: Forward bank account details to HR
								playlist_ad9d lens</h4>
						</div>
					</div>
				</div>


			</div>


		</div>



	</section>
</body>
</html>