<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="model.Channel"%>   

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/Channelling.js"></script>
<meta charset="ISO-8859-1">
<title>Channeling Details</title>
</head>
<body>
	<div style="background-image: url('Images/backimg.jpg');">
	<div class="container">
		<div class="row">
			<div class="col-8">
				<h1 class="m-3">Channeling Details</h1>
				<form id="formChannel" name="formChannel">
				
				
					<b>Appointment ID:</b>
					<input id="AppointmentID" name="AppointmentID" type="text"
						class="form-control form-control-sm" placeholder="Enter the Appointent ID"> <br> 
					<b>Appointment Date:</b>
					<input id="AppointmentDate" name="AppointmentDate" type="text"
						class="form-control form-control-sm" placeholder="Enter the Appointent Date"><br> 
					<b>Appointment Time:</b> 
					<input id="AppointmentTime" name="AppointmentTime" type="text"
						class="form-control form-control-sm" placeholder="Enter the Appointent Time"> <br> 
					<b>Appointment Category:</b> 
					<input id="AppointmentCategory" name="AppointmentCategory" type="text"
						class="form-control form-control-sm" placeholder="Enter the Appointent Category"> <br>
					<b>Appointment Doctor:</b> 
					<input id="AppointmentDoctor" name="AppointmentDoctor" type="text"
						class="form-control form-control-sm" placeholder="Enter the Appointent Doctor"> <br>
						 
						<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary">
						 <input type="hidden" id="hidChannelIDSave" name="hidChannelIDSave" value="">
				</form>
				
				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>
				<br>
				<div id="divChannelGrid">
					<%
					Channel channelobj = new Channel();
					out.print(channelobj.readChannel());
					%>
				</div>
				
				
			</div>
		</div>

	</div>
</div>
</body>
</html>