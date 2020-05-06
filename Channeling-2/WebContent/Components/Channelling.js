$(document).ready(function() 
{  
	if ($("#alertSuccess").text().trim() == "")  
	{   
		$("#alertSuccess").hide();  
	}  
	$("#alertError").hide(); }); 
 
// SAVE ============================================ 
$(document).on("click", "#btnSave", function(event) 
{  
	// Clear alerts---------------------  
	$("#alertSuccess").text("");  
	$("#alertSuccess").hide();  
	$("#alertError").text("");  
	$("#alertError").hide(); 
 
	// Form validation-------------------  
	var status = validateChannelForm();  
	if (status != true)  
	{   
		$("#alertError").text(status);   
		$("#alertError").show();   
		return;  
	} 
 
	// If valid------------------------  
	var type = ($("#hidChannelIDSave").val() == "") ? "POST" : "PUT"; 
	
	$.ajax( 
	{  
		url : "ChannelAPI",  
		type : type,  
		data : $("#formChannel").serialize(),  
		dataType : "text",  
		complete : function(response, status)  
		{   
			onChannelSaveComplete(response.responseText, status);  
		} 
	}); 
}); 

function onChannelSaveComplete(response, status) 
{  
	if (status == "success")  
	{   
		var resultSet = JSON.parse(response); 

		if (resultSet.status.trim() == "success")   
		{    
			$("#alertSuccess").text("Successfully saved.");    
			$("#alertSuccess").show(); 

			$("#divChannelGrid").html(resultSet.data);   
		} else if (resultSet.status.trim() == "error")   
		{    
			$("#alertError").text(resultSet.data);    
			$("#alertError").show();   
		} 

	} else if (status == "error")  
	{   
		$("#alertError").text("Error while saving.");   
		$("#alertError").show();  
	} else  
	{   
		$("#alertError").text("Unknown error while saving..");   
		$("#alertError").show();  
	} 

	$("#hidChannelIDSave").val("");  
	$("#formChannel")[0].reset(); 
} 
 
// UPDATE========================================== 
$(document).on("click", ".btnUpdate", function(event) 
{     
	$("#hidChannelIDSave").val($(this).closest("tr").find('#hidChannelIDUpdate').val());     
	$("#AppointmentID").val($(this).closest("tr").find('td:eq(0)').text());     
	$("#AppointmentDate").val($(this).closest("tr").find('td:eq(1)').text());     
	$("#AppointmentTime").val($(this).closest("tr").find('td:eq(2)').text());     
	$("#AppointmentCategory").val($(this).closest("tr").find('td:eq(3)').text()); 
	$("#AppointmentDoctor").val($(this).closest("tr").find('td:eq(4)').text());
}); 

//REMOVE===========================================
$(document).on("click", ".btnRemove", function(event) 
{  
	$.ajax(  
	{   
		url : "ChannelAPI",   
		type : "DELETE",   
		data : "AppointmentID=" + $(this).data("appointmentid"),   
		dataType : "text",   
		complete : function(response, status)   
		{    
			onChannelDeleteComplete(response.responseText, status);   
		}  
	}); 
}); 

function onChannelDeleteComplete(response, status) 
{  
	if (status == "success")  
	{   
		var resultSet = JSON.parse(response); 

		if (resultSet.status.trim() == "success")   
		{    
			$("#alertSuccess").text("Successfully deleted.");    
			$("#alertSuccess").show(); 
		
			$("#divChannelGrid").html(resultSet.data);   
		} else if (resultSet.status.trim() == "error")   
		{    
			$("#alertError").text(resultSet.data);    
			$("#alertError").show();   
		}

	} else if (status == "error")  
	{   
		$("#alertError").text("Error while deleting.");   
		$("#alertError").show();  
	} else  
	{   
		$("#alertError").text("Unknown error while deleting..");   
		$("#alertError").show();  
	}
}
 
// CLIENT-MODEL========================================================================= 
function validateChannelForm() 
{  
	// Appointment Date  
	if ($("#AppointmentDate").val().trim() == "")  
	{   
		return "Insert Appointment Date.";  
	} 
 
	// Appointment Time  
	if ($("#AppointmentTime").val().trim() == "")  
	{   
		return "Insert Appointmen tTime.";  
	}  

	// Appointment Category 
	if ($("#AppointmentCategory").val().trim() == "")  
	{   
		return "Insert Appointment Category.";  
	} 
	
	// Appointment Doctor  
	if ($("#AppointmentDoctor").val().trim() == "")  
	{   
		return "Insert Appointment Doctor.";  
	} 

	return true; 
}