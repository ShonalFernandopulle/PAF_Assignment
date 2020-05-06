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
	<div class="container">
		<div class="row">
			<div class="col-8">
				<h1 class="m-3">Channeling details</h1>
				<form id="formChannel" name="formChannel">
				
				
					Appointment ID:
					<input id="AppointmentID" name="AppointmentID" type="text"
						class="form-control form-control-sm"> <br> 
					Appointment Date:
					<input id="AppointmentDate" name="AppointmentDate" type="text"
						class="form-control form-control-sm"> <br> 
					Appointment Time: 
					<input id="AppointmentTime" name="AppointmentTime" type="text"
						class="form-control form-control-sm"> <br> 
					Appointment Category: 
					<input id="AppointmentCategory" name="AppointmentCategory" type="text"
						class="form-control form-control-sm"> <br>
					Appointment Doctor: 
					<input id="AppointmentDoctor" name="AppointmentDoctor" type="text"
						class="form-control form-control-sm"> <br>
						 
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

</body>
</html>