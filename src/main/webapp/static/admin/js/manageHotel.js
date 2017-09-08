$(document).ready(function() {
	var hotelId = $("#hotelIdHDN").val();
	//alert("hotelId : "+hotelId);
	//Hotel setup - available start date
    $('#hotelAvailStartDate').datepicker({
            format: 'mm/dd/yyyy',
            startDate: '01/01/2016',
            endDate: '12/30/2050'
    });
    
    //Hotel setup - available end date
    $('#hotelAvailEndDate').datepicker({
        format: 'mm/dd/yyyy',
        startDate: '01/01/2016',
        endDate: '12/30/2050'
	});
    
    $('.datepicker').datepicker({
        format: 'mm/dd/yyyy',
        startDate: '01/01/2016',
        endDate: '12/30/2050'
	});
   
  	//Hotel Rate - Date range picker
    $('#txtRateDateRange').daterangepicker();
  
	 //Flat red color scheme for iCheck - common for all tab
     $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
       checkboxClass: 'icheckbox_flat-green',
       radioClass: 'iradio_flat-green'
     });
	 
     //Hotel setup - amenity
     $('input[type="checkbox"].flat-red').on('ifChecked', function(event){
    	  
    	});
     $('input[type="checkbox"].flat-red').on('ifUnchecked', function(event){
    	 
    	});
     
     //Hotel setup - Hide update button on load
     $('#updateHtlBtn').hide();
     
     //Hotel setup - new hotel create action
     $('#createHtlBtn').click(function() {
    	 createUpdateHotelAjax();
     });
     
     //Hotel setup - update hotel action
     $('#updateHtlBtn').click(function() {
    	 createUpdateHotelAjax();
     });
     
     /* Call getHotel if hotel id exists*/
     if ( hotelId !== 'null' && hotelId !=='undefined' && hotelId !=="" ) {
    	getHotelById(hotelId);
     }
     
     //Horizontal accordian actions
	 $('#hotelSetupID').click(function() {
		 $('#hotelSetupID').addClass('current');
		 $('#roomTypeSeasonSetupID').removeClass('current');
		 $('#roomSetupID').removeClass('current');
		 $('#roomRateSetupId').removeClass('current');
		 $('#seasonCalId').removeClass('current');
		 $('#imageUploadId').removeClass('current');
		 
		 $('#hotelSetupContId').addClass('active');
		 $('#roomTypeSeasonSetupContId').removeClass('active');
		 $('#roomSetupContId').removeClass('active');
		 $('#roomRateContId').removeClass('active');
		 $('#seasonCalContId').removeClass('active');
		 $('#imageUploadContId').removeClass('active');
		 
		 
     });
	 //RoomType and Season Setup
	 $('#roomTypeSeasonSetupID').click(function() {
		 var hotelId = $("#hotelIdHDN").val();
		 if (hotelId !== null && hotelId !== "") {
			 $('#roomTypeSeasonSetupID').addClass('current');
			 $('#roomSetupID').removeClass('current');
			 $('#roomRateSetupId').removeClass('current');
			 $('#seasonCalId').removeClass('current');
			 $('#imageUploadId').removeClass('current');
			 $('#hotelSetupID').removeClass('current');
			 
			 $('#roomTypeSeasonSetupContId').addClass('active');
			 $('#roomSetupContId').removeClass('active');
			 $('#roomRateContId').removeClass('active');
			 $('#seasonCalContId').removeClass('active');
			 $('#imageUploadContId').removeClass('active');
			 $('#hotelSetupContId').removeClass('active');
		 }
		 
     });
    	 
     //if( hotelId !== null && hotelId !== "" ) {
    	 $('#roomSetupID').click(function() {
    		 var hotelId = $("#hotelIdHDN").val();
    		 //alert("roomSetupID : " +hotelId);
    		 if (hotelId !== null && hotelId !== "") {
	    		 loadRooms(hotelId);
	    		 $('#hotelSetupID').removeClass('current');
	    		 $('#roomTypeSeasonSetupID').removeClass('current');
	    		 $('#roomRateSetupId').removeClass('current');
	    		 $('#imageUploadId').removeClass('current');
	    		 $('#seasonCalId').removeClass('current');
	    		 $('#roomSetupID').addClass('current');
	    		 
	    		 $('#hotelSetupContId').removeClass('active');
	    		 $('#roomRateContId').removeClass('active');
	    		 $('#imageUploadContId').removeClass('active');
	    		 $('#seasonCalContId').removeClass('active');
	    		 $('#roomTypeSeasonSetupContId').removeClass('active');
	    		 $('#roomSetupContId').addClass('active');
    		 }
         });
    	 
    	 $('#roomRateSetupId').click(function() {
    		 var hotelId = $("#hotelIdHDN").val();
    		 //alert("roomRateSetupId : " +hotelId);
    		 if (hotelId !== null && hotelId !== "") {
    		 populateRateConfigDashboard(hotelId);
	    		 
	    		 $('#hotelSetupID').removeClass('current');
	    		 $('#roomTypeSeasonSetupID').removeClass('current');
	    		 $('#roomSetupID').removeClass('current');
	    		 $('#imageUploadId').removeClass('current');
	    		 $('#seasonCalId').removeClass('current');
	    		 $('#roomRateSetupId').addClass('current');
	    		 
	    		 $('#hotelSetupContId').removeClass('active');
	    		 $('#roomTypeSeasonSetupContId').removeClass('active');
	    		 $('#roomSetupContId').removeClass('active');
	    		 $('#imageUploadContId').removeClass('active');
	    		 $('#seasonCalContId').removeClass('active');
	    		 $('#roomRateContId').addClass('active');
    		 }
         });
    	 
    	 $('#seasonCalId').click(function() {
    		 var hotelId = $("#hotelIdHDN").val();
    		 //alert("roomRateSetupId : " +hotelId);
    		 if (hotelId !== null && hotelId !== "") {
    			 loadSeasonCalendar(hotelId);
	    		 $('#hotelSetupID').removeClass('current');
	    		 $('#roomTypeSeasonSetupID').removeClass('current');
	    		 $('#roomSetupID').removeClass('current');
	    		 $('#imageUploadId').removeClass('current');
	    		 $('#roomRateSetupId').removeClass('current');
	    		 $('#seasonCalId').addClass('current');
	    		 
	    		 $('#hotelSetupContId').removeClass('active');
	    		 $('#roomTypeSeasonSetupContId').removeClass('active');
	    		 $('#roomSetupContId').removeClass('active');
	    		 $('#imageUploadContId').removeClass('active');
	    		 $('#roomRateContId').removeClass('active');
	    		 $('#seasonCalContId').addClass('active');
    		 }
    		 
         });
    	 
    	 $('#imageUploadId').click(function() {
    		 var hotelId = $("#hotelIdHDN").val();
    		 //alert("roomRateSetupId : " +hotelId);
    		 if (hotelId !== null && hotelId !== "") {
    			 loadImageDashboard(hotelId);
	    		 $('#hotelSetupID').removeClass('current');
	    		 $('#roomTypeSeasonSetupID').removeClass('current');
	    		 $('#roomSetupID').removeClass('current');
	    		 $('#roomRateSetupId').removeClass('current');
	    		 $('#seasonCalId').removeClass('current');
	    		 $('#imageUploadId').addClass('current');
	    		 
	    		 $('#hotelSetupContId').removeClass('active');
	    		 $('#roomTypeSeasonSetupContId').removeClass('active');
	    		 $('#roomSetupContId').removeClass('active');
	    		 $('#roomRateContId').removeClass('active');
	    		 $('#seasonCalContId').removeClass('active');
	    		 $('#imageUploadContId').addClass('active');
    		 }
    		 
    		 
         });
     //}

	 $('#htl-image-modal-close').click(function() {
	   //Code to be executed when close is clicked
		 $('#dtlImgBoxBody').html("");
	 });
	 
	 //season, roomtype tab menu onclick event
	 $('#liRTTabId').click(function() {
		 //Code to be executed when close is clicked
		 if ( !$( '#liRTTabId' ).hasClass( 'active' ) ) {
			 //call get method to fetch roomType data
		 } else {
			 
		 }
	 });
	 
	 $('#liSeasTabId').click(function() {
		   //Code to be executed when close is clicked
		 if ( !$( '#liRTTabId' ).hasClass( 'active' ) ) {
			 //call get method to fetch season data
		 } else {
			 
		 }
	 });
	 
	 
});
	
function loadingImageShow() {
	$.loadingBlockShow({
        imgPath: contextPath + '/static/admin/dist/img/default.svg',
		text: 'Loading ...',
        style: {
            position: 'fixed',
            width: '100%',
            height: '100%',
            background: 'rgba(0, 0, 0, .8)',
            left: 0,
            top: 0,
            zIndex: 10000
        }
     });
}
function createUpdateHotelAjax() {
 
 $.ajax({
 			type : "POST",
 			url : "/uberotel/rest/property/createHotel",
 			data : $('#frmCreateHotel').serialize(),
 			
 			success : function(data, jqXHR) {
 				         var returnedHotel = data;
				         if ( returnedHotel['hotel']['errorMessages'] === "" ) {
				        	//Hide create button
					         $('#createHtlBtn').hide();
					         
				        	 //Load form fields with response value
					         $("#hotelId").val(returnedHotel['hotel']['hotelId']);
					         $("#hotelIdHDN").val(returnedHotel['hotel']['hotelId']);
	 						 $("#txtHotelName").val(returnedHotel['hotel']['hotelName']);
					    	 $("#txtAreaInfo").val(returnedHotel['hotelSrchTag']['destination']);
					    	 $("#txtLocation").val(returnedHotel['hotelSrchTag']['location']);
					    	 $("#txtAirport").val(returnedHotel['hotelSrchTag']['airport']);
					    	 $("#txtStation").val(returnedHotel['hotelSrchTag']['railStation']);
					    	 $("#txtHtlAddress").val(returnedHotel['hotel']['htlAddress']);
					    	 $("#txtHotelAvailStartDate").val(new Date(returnedHotel['hotel']['htlAvlblStartDate']).toLocaleDateString());
					    	 $("#txtHotelAvailEndDate").val(new Date(returnedHotel['hotel']['htlAvlblEndDate']).toLocaleDateString());
					    	 $("#txtShortDesc").val(returnedHotel['hotel']['shortDesc']);
					    	 $("#txtdetailDesc").val(returnedHotel['hotel']['detailedDesc']);
					    	 
					    	 var checkedAmenityStr = returnedHotel['hotel']['htlAmenities'];
					 
					    	 checkedAmenityStr = checkedAmenityStr.substr(1, checkedAmenityStr.length-2);
					    	 var checkedAmenityIds = checkedAmenityStr.split(", ");
					    	 
					    	 for ( j = 0; j < checkedAmenityIds.length; j++ ) {
					    		 $('#chkAmenity'+checkedAmenityIds[j]).iCheck('check');
					    	 }
					    	 
	 						//show update button
	 						$('#updateHtlBtn').show();
				         } else {
				        	 //code to show error message on front end.
				         }
 						 
 			 },
 			 error : function(jqXHR, errorThrown) {
 					console.log("Something really bad happened " + jqXHR);
 			 }
 			
         });
}
	
function getHotelById(hotelId) {
	$.ajax({
			type : "GET",
			url : "/uberotel/rest/property/getHotel/"+hotelId,
			
			success : function(data, jqXHR) {
					 var returnedHotel = data; 
					 //console.log(returnedHotel);
			         if ( returnedHotel['hotel']['errorMessages'] === null ) {
			        	//Hide create button
					    $('#createHtlBtn').hide();
					         
			        	 //Load form fields with response value
					     $("#hotelId").val(returnedHotel['hotel']['hotelId']);
					     $("#hotelIdHDN").val(returnedHotel['hotel']['hotelId']);
 						 $("#txtHotelName").val(returnedHotel['hotel']['hotelName']);
				    	 $("#txtAreaInfo").val(returnedHotel['hotelSrchTag']['destination']);
				    	 $("#txtLocation").val(returnedHotel['hotelSrchTag']['location']);
				    	 $("#txtAirport").val(returnedHotel['hotelSrchTag']['airport']);
				    	 $("#txtStation").val(returnedHotel['hotelSrchTag']['railStation']);
				    	 $("#txtHtlAddress").val(returnedHotel['hotel']['htlAddress']);
				    	 $("#txtHotelAvailStartDate").val(new Date(returnedHotel['hotel']['htlAvlblStartDate']).toLocaleDateString());
				    	 $("#txtHotelAvailEndDate").val(new Date(returnedHotel['hotel']['htlAvlblEndDate']).toLocaleDateString());
				    	 $("#txtShortDesc").val(returnedHotel['hotel']['shortDesc']);
				    	 $("#txtdetailDesc").val(returnedHotel['hotel']['detailedDesc']);
				    	 
				    	 var checkedAmenityStr = returnedHotel['hotel']['htlAmenities'];
				 
				    	 checkedAmenityStr = checkedAmenityStr.substr(1, checkedAmenityStr.length-2);
				    	 var checkedAmenityIds = checkedAmenityStr.split(", ");
				    	 
				    	 for ( j = 0; j < checkedAmenityIds.length; j++ ) {
				    		 $('#chkAmenity'+checkedAmenityIds[j]).iCheck('check');
				    	 }
				    	 
 						//show update button
 						$('#updateHtlBtn').show();
			         } else {
			        	 //code to show error message on front end.
			         }
						 
			 },
			 error : function(jqXHR, errorThrown) {
					console.log("Something really bad happened " + jqXHR);
			 }
			
     });
}

//Get hotel specific all room types
function getAllRoomTypeByHotelIdAjax(hotelId) {
	$.ajax({
		type : "GET",
		url : "/uberotel/rest/property/getRoomTypes/"+hotelId,
		
		success : function(data, jqXHR) {
			var i = 1;
			while ( i <= data.roomTypeList.size ) {
				//if status comes as 'N' then it should be read only
				if (data.roomTypeList[i-1].status === 'N') {
					$('#txtRoomTypeDesc'+i).prop("readonly", true);;
				}
			}
		 },
		 error : function(jqXHR, errorThrown) {
				console.log("Something really bad happened " + jqXHR);
		 }
		
 });
}

//RoomType create or update
function saveOrUpdateRoomTypeByHotelIdAjax(hotelId) {
	$.ajax({
		type : "POST",
		url : "/uberotel/rest/property/createRoomType",
		data : $('#frmCreateRoomType').serialize(),
		
		success : function(data, jqXHR) {
			         var returnedRoomType = data;
		         if ( returnedRoomType['roomType']['errorMessages'] === "" ) {
		        	 
		        	 //Load form fields with response value
			         $("#hotelId").val(returnedHotel['hotel']['hotelId']);
			         
		         } 
					 
		 },
		 error : function(jqXHR, errorThrown) {
				console.log("Something really bad happened at the time of room creation or update " + jqXHR);
		 }
     });
}

//Get hotel specific all season types
function getAllSeasonTypeByHotelIdAjax(hotelId) {
	
	$.ajax({
		type : "GET",
		url : "/uberotel/rest/property/getSeasonTypes/"+hotelId,
		
		success : function(data, jqXHR) {
			var i = 1;
			while ( i <= data.seasonTypeList.size ) {
				//if status comes as 'N' then it should be read only
				if (data.seasonTypeList[i-1].status === 'N') {
					$('#txtSeasonDesc'+i).prop("readonly", true);;
				} 
			}
		 },
		 error : function(jqXHR, errorThrown) {
				console.log("Something really bad happened " + jqXHR);
		 }
		
 });
	
}

//Season create or update
function saveOrUpdateSeasonTypeByHotelIdAjax(hotelId) {
	$.ajax({
		type : "POST",
		url : "/uberotel/rest/property/createSeasonType",
		data : $('#frmCreateSeasonType').serialize(),
		
		success : function(data, jqXHR) {
			         var returnedRoomType = data;
		         if ( returnedRoomType['roomType']['errorMessages'] === "" ) {
		        	 
		        	 //Load form fields with response value
			         $("#hotelId").val(returnedHotel['hotel']['hotelId']);
			         
		         } 
					 
		 },
		 error : function(jqXHR, errorThrown) {
				console.log("Something really bad happened at the time of season creation or update " + jqXHR);
		 }
     });
}

function createNewRoom(num) {

	//ajax call to create room
	var hotelId = $("#hotelId").val();
	var room_id = $("#hdnRoomId"+num).val();
	var roomNo = $("#txtRoomCode"+num).val();
	var roomDesc = $("#txtRoomDesc"+num).val();
	var roomTypeId = $("#selRoomTypeR"+num).val();
	var bedTypeId = $("#selBedTypeR"+num).val();
	var maxOccu = $("#txtMaxOccu"+num).val();
	
	$.ajax({
			type : "POST",
			url : "/uberotel/rest/property/createRoom",
			data : {hotelId:hotelId, room_id:room_id, room_number:roomNo, room_desc:roomDesc,room_type_id:roomTypeId,bed_type_id:bedTypeId,maxOccupancy:maxOccu},
			
			success : function(data, jqXHR) {
				         var returnedRoom = data;
			         if ( returnedRoom.rooms[0].errorMessages === "" ) {
				    	 //Set room id from response for update
			        	 $("#hdnRoomId"+num).val(returnedRoom.rooms[0].roomId);
			        	 
			        	 if(room_id === "") {
			        		//function call to create new row for new room insert
					    	 createNewRoomRow(num);
			        	 }
 						
			         } else {
			        	 //code to show error message on front end.
			         }
						 
			 },
			 error : function(jqXHR, errorThrown) {
					console.log("Something really bad happened " + jqXHR);
			 }
			
     });
	

}

function createNewRoomRow(num) {
	var optRT = $('#selRoomTypeR'+num+' > option').sort().clone();
	var optBT = $('#selBedTypeR'+num+' > option').sort().clone();
	var cnt = num+1;
	
   $('#tblRoom tbody tr:last').after('<tr>'
				+'<form id="frmRoom'+cnt+'" name="frmRoom'+cnt+'" action="">'
				+'<td><select class="form-control" id="selRoomTypeR'+cnt+'" name="selRoomTypeR'+cnt+'"></select></td>'
				+'<td><select class="form-control" id="selBedTypeR'+cnt+'" name="selBedTypeR'+cnt+'"></select></td>'
				+'<td><input type="text" class="form-control" id="txtRoomCode'+cnt+'" name="txtRoomCode'+cnt+'" placeholder="Room Code" size="4"></td>'
				+'<td><textarea class="form-control" id="txtRoomDesc'+cnt+'" name="txtRoomDesc'+cnt+'" placeholder="Room description"></textarea></td>'
				+'<td>'
				+'<input type="text" class="form-control" id="txtMaxOccu'+cnt+'" name="txtMaxOccu'+cnt+'" size="4"/>'
				+'<input type="hidden" id="hdnRoomId'+cnt+'" name="hdnRoomId'+cnt+'" value=""/>'
				+'</td>'
				+'<td><input type="checkbox" id="activeFlag'+cnt+'" name="activeFlag'+cnt+'"/></td>'
			    +'<td><input type="checkbox" id="verifiedFlag'+cnt+'" name="verifiedFlag'+cnt+'"/></td>'
				+'<td>'
					+'<span id="createNewRoom'+cnt+'" class="glyphicon glyphicon-floppy-open save-gly-style24" onclick="javascript:createNewRoom('+cnt+');"></span>'
					+'<span id="updateRoom'+cnt+'" class="glyphicon glyphicon-floppy-disk save-gly-style24 hidden" onclick="javascript:updateRoom('+cnt+');"></span>'
					
				+'</td>'
			+'</form></tr>');
	   
	   $("#selRoomTypeR"+cnt).append(optRT);
	   $("#selBedTypeR"+cnt).append(optBT);
	   
	   $("#createNewRoom"+num).addClass("hidden");
	   $("#updateRoom"+num).removeClass("hidden");
	   
}

function updateRoom(num) {
	createNewRoom(num);
}

function loadRooms(hotelId){
	//alert("Load Rooms....");
	var startTime = new Date().getTime();
	//loader
	loadingImageShow();

		$.ajax({
			type : "GET",
			url : "/uberotel/rest/property/getRoomList/"+hotelId,
			
			success : function(data, jqXHR) {
				     var returnedRooms = data;
				     //remove all rows except first
					 $("#tblRoom tbody tr").slice(1).remove();
				     if ( returnedRooms.rooms.length > 0 && returnedRooms.rooms[0].roomId !== null && returnedRooms.rooms[0].roomId !== "" ) {
				       	 var n = 1;
				       	 while ( n <= returnedRooms.rooms.length ) {
				       		 if ( n > 1 ) {
				       			 createNewRoomRow(n-1);
				       		 }
				       		 
				       		 $("#hdnRoomId"+n).val(returnedRooms.rooms[n-1].roomId);
				       		 $("#selRoomTypeR"+n).val(returnedRooms.rooms[n-1].roomTypeId);
				       		 $("#selBedTypeR"+n).val(returnedRooms.rooms[n-1].bedTypeId);
				       		 $("#txtRoomCode"+n).val(returnedRooms.rooms[n-1].roomNumber);
				       		 $("#txtRoomDesc"+n).val(returnedRooms.rooms[n-1].roomDesc);
				       		 $("#txtMaxOccu"+n).val(returnedRooms.rooms[n-1].maxOccupancy);
				       		 
				       		 n++;
				       	 }
				       	 
				       	 //create new row
				       	 if ( n > 1 ) {
				       		createNewRoomRow(n-1);
				       	 }
				       	 
				     } else {
				    	 $("#hdnRoomId1").val("");
				  		 $("#selRoomTypeR1").val("");
				  		 $("#selBedTypeR1").val("");
				  		 $("#txtRoomCode1").val("");
				  		 $("#txtRoomDesc1").val("");
				  		 $("#txtMaxOccu1").val("");
				 	     $("#createNewRoom1").removeClass("hidden");
					     $("#updateRoom1").addClass("hidden");
				     }
			 },
			 error : function(jqXHR, errorThrown) {
					console.log("Something really bad happened " + jqXHR);
			 }
		});
		/*var endTime = new Date().getTime();
		var timeOut1 = 500;
		console.log(endTime-startTime);
		if((endTime-startTime) < 500 ) {
			endTime = endTime+500;
			timeOut1 = endTime;
		}*/
		
		setTimeout($.loadingBlockHide, 500);
}


function populateRateConfigDashboard(hotelId) {
	
	$("#accordionRateConfig").html("");
	
	
	var innerHtmlCSLTop1 = '<div class="panel box">'
	    				+'<div class="box-header with-border">'
	    					+'<h4 class="box-title">'
	   						+'<a href="javascript:void(0);" style="font-size: 24px;">';
	
	var innerHtmlCSLTop2 = '</a></h4></div>'
	   						+'<div id="collapseOne" class="panel-collapse collapse in">'
							+'<div class="box-body">'
							+'<div class="row">'
							+'<div class="col-md-2"><span style="font-size: 18px; font-weight:600;">Different Seasons : </span>&nbsp;</div>';
	
	var innerHtmlCSLButtom = '</div></div></div></div>';
	//loader
	loadingImageShow();
	
	$.ajax({
		type : "GET",
		url :"/uberotel/rest/rate/getRateConfig/"+hotelId, //need to set new url 
		
		success : function(data, jqXHR) {

				var innerHtmlTop = "";
				var innerHtmlMiddle = "";
				var innerHtmlButtom = "";
				var bookingChannel = "";
				var innerHtmlBody = "";
				var data1=data;
				for ( i = 0 ; i < data1.hotelRateChannelSeasonList.length; i++ ) {
					if ( i == 0 ) {
						bookingChannel = data1.hotelRateChannelSeasonList[i].bookingChannelDesc;
						innerHtmlTop = innerHtmlCSLTop1 + bookingChannel.toUpperCase() + innerHtmlCSLTop2;
					}
					if(bookingChannel == data1.hotelRateChannelSeasonList[i].bookingChannelDesc) {
						innerHtmlMiddle += '<div class="col-md-2"><span class="button_'+data1.hotelRateChannelSeasonList[i].seasonDesc.toLowerCase()+'" onclick="showRateDetailsModal(\'rateDtlModal\', \''+data1.hotelRateChannelSeasonList[i].hotelId+'\', \''+data1.hotelRateChannelSeasonList[i].idHtlRateConfig+'\');">'+data1.hotelRateChannelSeasonList[i].seasonDesc.toUpperCase()+'</span>&nbsp;</div>';	
					} else {
						
						innerHtmlBody += innerHtmlTop + innerHtmlMiddle + innerHtmlCSLButtom;
						
						innerHtmlTop = "";
						innerHtmlMiddle = "";
						
						bookingChannel = data1.hotelRateChannelSeasonList[i].bookingChannelDesc;
						
						innerHtmlTop = innerHtmlCSLTop1 + bookingChannel.toUpperCase() + innerHtmlCSLTop2;
						
						innerHtmlMiddle += '<div class="col-md-2"><span class="button_'+data1.hotelRateChannelSeasonList[i].seasonDesc.toLowerCase()+'" onclick="showRateDetailsModal(\'rateDtlModal\', \''+data1.hotelRateChannelSeasonList[i].hotelId+'\', \''+data1.hotelRateChannelSeasonList[i].idHtlRateConfig+'\');">'+data1.hotelRateChannelSeasonList[i].seasonDesc.toUpperCase()+'</span>&nbsp;</div>';
					}
					
				}
				
				innerHtmlBody += innerHtmlTop + innerHtmlMiddle + innerHtmlCSLButtom;
				
				$("#accordionRateConfig").html(innerHtmlBody);
				
		}, error : function(jqXHR, errorThrown) {
				console.log("Something really bad happened " + jqXHR);
		 }
	});
	setTimeout($.loadingBlockHide, 500);

}




function showRateDetailsModal(modalName, htlId, htlRateConfigId) {
	$('#'+modalName).addClass("modal modal-success");
	$('#hotelIdRateDtl').val("");
	$('#rateConfigIdRateDtl').val("");
	//set hotel id and rateconfig id to rateDetail modal
	$('#hotelIdRateDtl').val(htlId);
	$('#rateConfigIdRateDtl').val(htlRateConfigId);
	populateSeasonalRateDetails(htlId, htlRateConfigId);
	$('#'+modalName).modal('show');
}



function populateSeasonalRateDetails(htlId, htlRateConfigId) {
	$("#idTbody").html("");
	//loader
	loadingImageShow();
	$.ajax({
		type : "POST",
		url : "/uberotel/rest/rate/getDetailedRate", //need to set new url 
		data : {hotelId:htlId, rateConfigId:htlRateConfigId},
		success : function(data, jqXHR) {
				var innerHtmlTop = "";
				var innerHtmlMiddle = "";
				var innerHtmlButtom = "";
				var bookingChannel = "";
				var innerHtmlBody = "";
				var oldRT = "";
				var oldMP = "";
				var oldBT = "";
				var data2=data;
				var bedTypeOpen = false;
				for (i = 0; i < data2.hotelRateConfigDtlsList.length; i++) {
					
					var currentRT = data2.hotelRateConfigDtlsList[i].roomTypeDesc;
					var currentMP = data2.hotelRateConfigDtlsList[i].maelPlanDesc;
					var currentBT = data2.hotelRateConfigDtlsList[i].bedTypeDesc;
					var rate = data2.hotelRateConfigDtlsList[i].rate;
			
					if (oldRT != currentRT) {
						//alert(bedTypeOpen);
						if (bedTypeOpen == true) {
							innerHtmlMiddle += '</td></tr></table></td></tr></table></td></tr></table>';
							oldMP = "";
						}
						oldRT = currentRT;
						innerHtmlMiddle += '<tr><td><table id="tbl_room_type" width="100%">' //RT start
								+ '<tbody>'
								+ '<tr>'
								+ '<td  colspan="1">'
								+ currentRT
								+ '</td>'
								+ '<td  colspan="3"><table id="tbl_meal_plan" '
								+ 'width="100%">'; //MP start
						if (oldMP !== "" && oldMP != currentMP) {
							innerHtmlMiddle += '</td></tr></table>';
							bedTypeOpen = false;
						}
						if (oldMP != currentMP) {
							oldMP = currentMP;
							innerHtmlMiddle += '<tr>'
									+ '<td>'
									+ currentMP
									+ '</td>'
									+ '<td><table id="tbl_bed_type" '
									+ 'width="100%">'; //BT start
			
							innerHtmlMiddle += '<tr><td class="width240">' + currentBT + '</td><td class="rate_algn width107">' + rate
									+ '</td></tr>';
							bedTypeOpen = true;
						} else {
							innerHtmlMiddle += '<tr><td class="width240">' + currentBT + '</td><td class="rate_algn width107">' + rate
									+ '</td></tr>';
							bedTypeOpen = true;
						}
			
					} else {
			
						if (oldMP != currentMP) {
							if (oldMP !== "") {
								innerHtmlMiddle += '</td></tr></table>';
								bedTypeOpen = false;
							}
							oldMP = currentMP;
							innerHtmlMiddle += '<tr>'
									+ '<td>'
									+ currentMP
									+ '</td>'
									+ '<td><table id="tbl_bed_type" '
									+ 'width="100%">';
			
							innerHtmlMiddle += '<tr><td class="width240">' + currentBT + '</td><td class="rate_algn width107">' + rate
									+ '</td></tr>';
							bedTypeOpen = true;
						} else {
							innerHtmlMiddle += '<tr><td class="width240">' + currentBT + '</td><td class="rate_algn width107">' + rate
									+ '</td></tr>';
							bedTypeOpen = true;
						}
			
					}
			
				}
				innerHtmlMiddle += '</td></tr></tbody></table>';
			
				$("#idTbody").html(innerHtmlMiddle);
				
		}, error : function(jqXHR, errorThrown) {
			console.log("Something really bad happened " + jqXHR);
		}
	});
	setTimeout($.loadingBlockHide, 500);
}

function createNewSeasonAvailability(num) {

	//ajax call to create room
	var hotelId = $("#hotelId").val();
	var htlSeasCalId = $("#hdnSeasCalId"+num).val();
	var seasonDesc = $("#selSeason"+ num + " option:selected").text();
	var startDate = $("#txtSCalStartDate"+num).val();
	var endDate = $("#txtSCalEndDate"+num).val();
	
	if (seasonDesc.toLowerCase().indexOf("select") >= 0) {
		seasonDesc = "";
	}
	
	$.ajax({
			type : "POST",
			url : "/uberotel/rest/rate/createSeasonCal",
			data : {hotelId:hotelId, idHtlSeasonCalendar:htlSeasCalId, season_desc:seasonDesc, start_date:startDate, end_date:endDate},
			
			success : function(data, jqXHR) {
				         var returnedseasCal = data;
			         if ( returnedseasCal.errorMessages === "" ) {
			        	 
				    	 //Set room id from response for update
			        	 $("#hdnSeasCalId"+num).val(returnedseasCal.idHtlSeasonCalendar);
			        	 
			        	 if(htlSeasCalId === "") {
			        		//function call to create new row for new room insert
			        		 createSeasonCalendarRow(num);
			        	 }
 						
			         } else {
			        	 //code to show error message on front end.
			         }
						 
			 },
			 error : function(jqXHR, errorThrown) {
					console.log("Something really bad happened " + jqXHR);
			 }
			
     });
	

}

function createSeasonCalendarRow(num) {
	var optSC = $('#selSeason'+num+' > option').sort().clone();
	var cnt = num+1;
	
   $('#tblSeasonCalendar tbody tr:last').after('<tr>'
				+'<form id="frmSeasonCal'+cnt+'" name="frmSeasonCal'+cnt+'" action="">'
				+'<td><select class="form-control" id="selSeason'+cnt+'" name="selSeason'+cnt+'"></select></td>'
				+'<td>'
					+'<div class="input-group input-append date" id="seasAvailStartDate'+cnt+'" data-provide="datepicker">'
						+'<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>' 
							+'<input type="text" class="form-control input-md datepicker" id="txtSCalStartDate'+cnt+'" name="txtSCalStartDate'+cnt+'" readonly="readonly" placeholder="Start date" />'
					+'</div>'
				+'</td>'
				+'<td>'
					+'<div class="input-group input-append date" id="seasAvailEndDate'+cnt+'" data-provide="datepicker">'
						+'<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>' 
							+'<input type="text" class="form-control input-md datepicker" id="txtSCalEndDate'+cnt+'" name="txtSCalEndDate'+cnt+'" readonly="readonly" placeholder="End date" />'
					+'</div>'
				+'</td>'
				+'<td>'
					+'<input type="hidden" id="hdnSeasCalId'+cnt+'" name="hdnSeasCalId'+cnt+'" value=""/>'
					+'<span id="createNewSeasonCal'+cnt+'" class="glyphicon glyphicon-floppy-open save-gly-style24" onclick="javascript:createNewSeasonAvailability('+cnt+');"></span>'
					+'<span id="updateSeasonCal'+cnt+'" class="glyphicon glyphicon-floppy-disk save-gly-style24 hidden" onclick="javascript:createNewSeasonAvailability('+cnt+');"></span>'
				+'</td>'
			+'</form></tr>');

	   $("#selSeason"+cnt).append(optSC);
	   
	   $("#createNewSeasonCal"+num).addClass("hidden");
	   $("#updateSeasonCal"+num).removeClass("hidden");
	   
}

function updateSeasonCalendarRow(num) {
	createSeasonCalendarRow(num);
}

function loadSeasonCalendar(hotelId){
	//loader
	loadingImageShow();
		$.ajax({
			type : "GET",
			url : "/uberotel/rest/rate/getSeasonCal/"+hotelId,
			
			success : function(data, jqXHR) {
				     var returnedSeasonCals = data;
				     //alert("returnedSeasonCals " + returnedSeasonCals.length);
				     //remove all rows except first
					 $("#tblSeasonCalendar tbody tr").slice(2).remove();
				     if ( returnedSeasonCals.length > 0 && returnedSeasonCals[0].hotelId !== null && returnedSeasonCals[0].hotelId !== "" ) {
				       	 var n = 1;
				       	 while ( n <= returnedSeasonCals.length ) {
				       		 if ( n > 2 ) {
				       			createSeasonCalendarRow(n-1);
				       		 }
				       		 
				       		 $("#hdnSeasCalId"+n).val(returnedSeasonCals[n-1].idHtlSeasonCalendar);
				       		 $("#selSeason"+n).val(returnedSeasonCals[n-1].seasonId);
			
				       		 $("#txtSCalStartDate"+n).val(new Date(returnedSeasonCals[n-1].startDate).toLocaleDateString());
				       		 $("#txtSCalEndDate"+n).val(new Date(returnedSeasonCals[n-1].endDate).toLocaleDateString());
				       		 
				       		 n++;
				       	 }
				       	 
				       	 //create new row
				       	 if ( n > 2 ) {
				       		createSeasonCalendarRow(n-1);
				       	 }
				       	 
				     } else {
				    	 $("#selSeason1").val("");
				  		 $("#txtSCalStartDate1").val("");
				  		 $("#txtSCalEndDate1").val("");
				 	     $("#createNewSeasonCal1").removeClass("hidden");
					     $("#updateSeasonCal1").addClass("hidden");
				     }
			 },
			 error : function(jqXHR, errorThrown) {
					console.log("Something really bad happened " + jqXHR);
			 }
			
		});
		setTimeout($.loadingBlockHide, 500);
}



function loadImageDashboard(hotelId){
	loadingImageShow();
	$("#imgDashId").html("");
		$.ajax({
			type : "GET",
			url : "/uberotel/rest/property/getDigitalAsset/"+hotelId,
			
			success : function(data, jqXHR) {
				     var returnedimages = data;
				     
				     if ( returnedimages.length > 0 ) {
				       	 var n = 0;
				       	var innerHtmlbody = "";
				       	var innerHtmlRows = "";
				       	 while ( n < returnedimages.length ) {
				       		 
				       		innerHtmlRows = createImageDashboardRow(n, returnedimages[n]);
				       		innerHtmlbody += innerHtmlRows;
				       		n++;
				       	 }
				     }
				     $("#imgDashId").html(innerHtmlbody);
			},
			 error : function(jqXHR, errorThrown) {
					console.log("Something really bad happened " + jqXHR);
			 }
			
		});
		setTimeout($.loadingBlockHide, 500);
}




function generateLabel(assetType, roomType) {
	if(assetType === "HT_DETAIL") {
		return "[ HOTEL ] DETAILED IMAGES";
	}
	if(assetType === "RT_THUMB") {
		return "[ "+roomType+" ] THUMBNAIL - For listing page";
	}
	if(assetType === "HT_THUMB") {
		return "[ HOTEL ] THUMBNAIL - For listing page";
	}
}

function createImageDashboardRow(num, returnedimages) {
	var assetType = generateLabel(returnedimages.assetType, returnedimages.roomTypeDesc);
	console.log(returnedimages.imagePath);
	var previewBtnHtml = '<div>'
							+'<a href="#" id="btnPreview'+num+'" class="btn btn-info btn-md" onclick="showImageModal('+returnedimages.hotelId+', '+returnedimages.digitalAssetId+',\''+returnedimages.imagePath+'\');">'
								+'<span class="glyphicon glyphicon-eye-open"></span>&nbsp;Preview'
							+'</a>'
						 +'</div>';
	var inHtml1 = '<tr>'
				+'<td>'+assetType+'</td>'
				+'<td><div class="form-group" style="padding-top: 0px; padding-bottom: 8px;"><form id="frmupload'+num+'">'
				+'<input type="hidden" id="digitalAssetId'+num+'" name="digitalAssetId" value="'+returnedimages.digitalAssetId+'"/>'
				+'<input type="hidden" id="hotelId'+num+'" name="hotelId" value="'+returnedimages.hotelId+'"/>'
				+'<input type="hidden" id="assetType'+num+'" name="assetType" value="'+returnedimages.assetType+'"/>'
				+'<input type="hidden" id="roomTypeDesc'+num+'" name="roomTypeDesc" value="'+returnedimages.roomTypeDesc+'"/>'
				
				      +'<div class="col-xs-10" style="padding-right: 0px;">'
			         +'<div class="input-group">'
		                +'<label class="input-group-btn">'
		                    +'<span class="btn btn-warning">Browse&hellip; <input type="file" id="files'+num+'" name="files'+num+'" multiple="multiple" style="display: none;"/></span>'
		                +'</label>'
		                +'<input type="text" name="txtImgPath'+num+'" class="form-control" readonly/>'
		              +'</div>'
		              +'</div>'
		              /*+'<div class="col-xs-2">'
				      	<input type="hidden" id="tags" name="tags" value="1"/>
				        <button type="buton" class="btn btn-primary" onclick="uploadRateDetailsAjax()">Upload</button>
				      </div>
				    
				</form>
				</div>*/
					+'<div class="col-xs-2"><a href="#" id="btnUpload'+num+'" class="btn btn-info btn-md" onclick="javascript:uploadDigitalAssetAjax('+num+');" style="padding-left: 20px;">'
				        +'<span class="glyphicon glyphicon-upload"></span>&nbsp;Upload'
				        +'</a></div></form></div></td>'
				+'<td align="center">'
						
	var inHtml2 = '</td></tr><tr><td colspan=3 height="7px"></td></tr>';
	var innerHtmlbody = "";
	
	if(returnedimages.noOfAssets > 0) {
		innerHtmlbody = inHtml1 + previewBtnHtml +inHtml2;					
	} else {
		innerHtmlbody = inHtml1 + inHtml2;
	}
	return innerHtmlbody;
}

function uploadDigitalAssetAjax(num) {

	var formdata=new FormData($('form#frmupload'+num)[0]);
	console.log(formdata);
	 
	 $.ajax({
		type : "POST",
		url : "/uberotel/rest/property/uploadDigitalAsset",
		data : formdata,
		contentType : false,
  		processData: false,	 			
		success : function(data, jqXHR) {
			         var returnedAsset = data;
		 },
		 error : function(jqXHR, errorThrown) {
				console.log("Something really bad happened " + jqXHR);
		 }		
	 });
}

function uploadRateDetailsAjax() {

	var formdata=new FormData($('form#frmUpldRateFile')[0]);
	console.log(formdata);
	 
	 $.ajax({
		type : "POST",
		url : "/uberotel/rest/rate/uploadRateFile",
		data : formdata,
		contentType : false,
  		processData: false,	 			
		success : function(data, jqXHR) {
			         var returnedAsset = data;
		 },
		 error : function(jqXHR, errorThrown) {
				console.log("Something really bad happened " + jqXHR);
		 }		
	 });
}

function showImageModal(htlId, digitalAssetId, imagePath) {
	$('#dtlImgModal').addClass("modal modal-success");
	//loader
	loadingImageShow();
	//console.log(imagePath);
	var path = imagePath.split("|");
	var images = null;
	//console.log(path);
	
	if(path[1].length > 0) {
		images = path[1].split(",");
	}
	$('#dtlImgBoxBody').html("");
	var carouselHtml = "";
	var carouIndicatorHtml = '<div class="col-md-12"><div class="box box-solid"><div id="dtlImgBoxBody" class="box-body">'
							+'<div id="htl-carousel" class="carousel slide" data-ride="carousel">'
							+'<ol class="carousel-indicators">';
	var liContentHtml = "";
	var i = 0;
	for ( i = 0; i < images.length; i++ ) {
		if ( i == 0 ) {
			liContentHtml += '<li data-target="#htl-carousel" data-slide-to="'+i+'" class="active"></li>';
		} else {
			liContentHtml += '<li data-target="#htl-carousel" data-slide-to="'+i+'" class=""></li>';
		}
	}
	
	var olEnd = '</ol><div class="carousel-inner">'
	var imgContentHtml = "";
	
	for ( i = 0; i < images.length; i++ ) {
		if ( i == 0 ) {
			imgContentHtml += '<div class="item active"><img src="'+path[0]+images[0]+'" alt=""></div>';
		} else {
			imgContentHtml += '<div class="item"><img src="'+path[0]+images[i]+'" alt=""></div>';
		}
	}
		
	var lastHtml = '</div>'
					/*+'<a id="aPrevId" class="left carousel-control" href="#htl-carousel" data-slide="prev">'
					+'</a>'*/
					+'<a id="aNextId" class="right carousel-control" href="#htl-carousel" data-slide="next">'
					+'<span class="fa fa-angle-right"></span></a></div></div></div></div>'
					+'<div class="col-md-12" style="text-align: center;">'
					+'<input type="hidden" id="hdnImageId" name="hdnImageId" value=""/>'
					+'<button type="buton" class="btn btn-danger" onclick="javascript:deleteImage(hdnImageId, '+htlId+', '+digitalAssetId+' );">Delete</button>'
					+'</div></div>';
	
	carouselHtml = carouIndicatorHtml + liContentHtml + olEnd + imgContentHtml + lastHtml;
	
	$('#dtlImgModalBody').html(carouselHtml);
	
	$('.carousel').carousel({
 		interval: 6000
 	});
	var activeSlide = $('div.item.active');
    var image = $('div.item.active').find('img').attr('src');
    console.log(image);
    $('#hdnImageId').val(image);
	
	$('#htl-carousel').bind('slide.bs.carousel', function (e) {
		$('#hdnImageId').val("");
	    activeSlide = $('div.item.active');
	    if (activeSlide.next().length === 1) {
	    	image = activeSlide.next().find('img').attr('src');
	    	$('#hdnImageId').val(image);
	    } else {
		    image = $('.carousel-inner').children().first().find('img').attr('src');
		    $('#hdnImageId').val(image);
		}
	});
	
	$('#dtlImgModal').modal('show');
	setTimeout($.loadingBlockHide, 500);
}

function deleteImage(imagePath, htlId, digitalAssetId){
	var imagePath = $('#hdnImageId').val();
	alert("imagePath - " + imagePath + ", htlId -" + htlId  + ", digitalAssetId - " + digitalAssetId);
	
}


var data = [{
	"hotelId": 12,
	"roomId": null,
	"createdBy": null,
	"digitalAssetId": 2,
	"hotelName": "Jewel of the East",
	"created": null,
	"updated": null,
	"updatedBy": null,
	"noOfAssets":5,
	"assetResHtPx": null,
	"assetResWdPx": null,
	"assetType": "HT_DETAIL",
	"roomTypeId": 0,
	"useRoomType": null,
	"assetDetail": null,
	"roomTypeDesc": "",
	"imagePath": "http://placehold.it/900x500/|39CCCC/ffffff&text=Img1,3c8dbc/ffffff&text=Img2,f39c12/ffffff&text=Img3"
	
}, {
	"hotelId": 12,
	"roomId": null,
	"createdBy": null,
	"digitalAssetId": 1,
	"hotelName": "Jewel of the East",
	"created": null,
	"updated": null,
	"updatedBy": null,
	"noOfAssets": 0,
	"assetResHtPx": null,
	"assetResWdPx": null,
	"assetType": "HT_THUMB",
	"roomTypeId": 0,
	"useRoomType": null,
	"assetDetail": null,
	"roomTypeDesc": "",
	"imagePath": "http://placehold.it/900x500/|39CCCC/ffffff&text=Img1,3c8dbc/ffffff&text=Img2,f39c12/ffffff&text=Img3"
},  {
	"hotelId": 12,
	"roomId": null,
	"createdBy": null,
	"digitalAssetId": 5,
	"hotelName": "Jewel of the East",
	"created": null,
	"updated": null,
	"updatedBy": null,
	"noOfAssets": 0,
	"assetResHtPx": null,
	"assetResWdPx": null,
	"assetType": "RT_THUMB",
	"roomTypeId": 1,
	"useRoomType": null,
	"assetDetail": null,
	"roomTypeDesc": "Standard",
	"imagePath": "http://placehold.it/900x500/|39CCCC/ffffff&text=Img1,3c8dbc/ffffff&text=Img2,f39c12/ffffff&text=Img3"
}/*, {
	"hotelId": 12,
	"roomId": null,
	"createdBy": null,
	"digitalAssetId": 13,
	"hotelName": "Jewel of the East",
	"created": null,
	"updated": null,
	"updatedBy": null,
	"noOfAssets": 0,
	"assetResHtPx": null,
	"assetResWdPx": null,
	"assetType": "RT_THUMB",
	"roomTypeId": 2,
	"useRoomType": null,
	"assetDetail": null,
	"roomTypeDesc": "Deluxe"
}*//*,{
	"hotelId": 12,
	"roomId": null,
	"createdBy": null,
	"digitalAssetId": 17,
	"hotelName": "Jewel of the East",
	"created": null,
	"updated": null,
	"updatedBy": null,
	"noOfAssets": 0,
	"assetResHtPx": null,
	"assetResWdPx": null,
	"assetType": "RT_THUMB",
	"roomTypeId": 3,
	"useRoomType": null,
	"assetDetail": null,
	"roomTypeDesc": "Super Deluxe"
}, {
	"hotelId": 12,
	"roomId": null,
	"createdBy": null,
	"digitalAssetId": 31,
	"hotelName": "Jewel of the East",
	"created": null,
	"updated": null,
	"updatedBy": null,
	"noOfAssets": 0,
	"assetResHtPx": null,
	"assetResWdPx": null,
	"assetType": "RT_THUMB",
	"roomTypeId": 4,
	"useRoomType": null,
	"assetDetail": null,
	"roomTypeDesc": "Executive"
}*/];

var data1 = {
		"viewType": "RATE_CONFIG",
		"hotelRateChannelSeasonList": [{
			"seasonDesc": "RED",
			"activeFlag": "A",
			"seasonId": null,
			"hotelId": 100,
			"bookingChannelDesc": "Direct",
			"idHtlRateConfig": 1,
			"bookingChannelId": null
		}, {
			"seasonDesc": "BLUE",
			"activeFlag": "A",
			"seasonId": null,
			"hotelId": 100,
			"bookingChannelDesc": "Direct",
			"idHtlRateConfig": 2,
			"bookingChannelId": null
		}, {
			"seasonDesc": "WHITE",
			"activeFlag": "A",
			"seasonId": null,
			"hotelId": 100,
			"bookingChannelDesc": "Direct",
			"idHtlRateConfig": 3,
			"bookingChannelId": null
		}, {
			"seasonDesc": "GREEN",
			"activeFlag": "N",
			"seasonId": null,
			"hotelId": 100,
			"bookingChannelDesc": "Direct",
			"idHtlRateConfig": 4,
			"bookingChannelId": null
		}, {
			"seasonDesc": "Default",
			"activeFlag": "A",
			"seasonId": null,
			"hotelId": 100,
			"bookingChannelDesc": "Direct",
			"idHtlRateConfig": 5,
			"bookingChannelId": null
		}, {
			"seasonDesc": "RED",
			"activeFlag": "A",
			"seasonId": null,
			"hotelId": 100,
			"bookingChannelDesc": "OTA",
			"idHtlRateConfig": 1,
			"bookingChannelId": null
		}, {
			"seasonDesc": "BLUE",
			"activeFlag": "A",
			"seasonId": null,
			"hotelId": 100,
			"bookingChannelDesc": "OTA",
			"idHtlRateConfig": 2,
			"bookingChannelId": null
		}, {
			"seasonDesc": "WHITE",
			"activeFlag": "A",
			"seasonId": null,
			"hotelId": 100,
			"bookingChannelDesc": "OTA",
			"idHtlRateConfig": 3,
			"bookingChannelId": null
		}, {
			"seasonDesc": "GREEN",
			"activeFlag": "N",
			"seasonId": null,
			"hotelId": 100,
			"bookingChannelDesc": "OTA",
			"idHtlRateConfig": 4,
			"bookingChannelId": null
		}, {
			"seasonDesc": "Default",
			"activeFlag": "A",
			"seasonId": null,
			"hotelId": 100,
			"bookingChannelDesc": "OTA",
			"idHtlRateConfig": 5,
			"bookingChannelId": null
		}]};

var data2 = {
		"viewType" : "RATE_CONFIG",
		"hotelRateConfigDtlsList" : [ {
			"roomType" : "roomType1",
			"mealPlan" : "mealPlan1",
			"bedType" : "bedType1",
			"rate" : 100,
			"hotelId" : 12,
			"bookingChannelDesc" : "Direct",
			"seasonDesc" : "RED"
		}, {
			"roomType" : "roomType1",
			"mealPlan" : "mealPlan1",
			"bedType" : "bedType2",
			"rate" : 200,
			"hotelId" : 12,
			"bookingChannelDesc" : "Direct",
			"seasonDesc" : "RED"
		}, {
			"roomType" : "roomType1",
			"mealPlan" : "mealPlan1",
			"bedType" : "bedType3",
			"rate" : 300,
			"hotelId" : 12,
			"bookingChannelDesc" : "Direct",
			"seasonDesc" : "RED"
		}, {
			"roomType" : "roomType1",
			"mealPlan" : "mealPlan2",
			"bedType" : "bedType1",
			"rate" : 100,
			"hotelId" : 12,
			"bookingChannelDesc" : "Direct",
			"seasonDesc" : "RED"
		}, {
			"roomType" : "roomType1",
			"mealPlan" : "mealPlan2",
			"bedType" : "bedType2",
			"rate" : 200,
			"hotelId" : 12,
			"bookingChannelDesc" : "Direct",
			"seasonDesc" : "RED"
		}, {
			"roomType" : "roomType1",
			"mealPlan" : "mealPlan2",
			"bedType" : "bedType2",
			"rate" : 400,
			"hotelId" : 12,
			"bookingChannelDesc" : "Direct",
			"seasonDesc" : "RED"
		}, {
			"roomType" : "roomType2",
			"mealPlan" : "mealPlan1",
			"bedType" : "bedType1",
			"rate" : 100,
			"hotelId" : 12,
			"bookingChannelDesc" : "Direct",
			"seasonDesc" : "RED"
		}, {
			"roomType" : "roomType2",
			"mealPlan" : "mealPlan1",
			"bedType" : "bedType2",
			"rate" : 600,
			"hotelId" : 12,
			"bookingChannelDesc" : "Direct",
			"seasonDesc" : "RED"
		}, {
			"roomType" : "roomType2",
			"mealPlan" : "mealPlan1",
			"bedType" : "bedType3",
			"rate" : 110,
			"hotelId" : 12,
			"bookingChannelDesc" : "Direct",
			"seasonDesc" : "RED"
		}, {
			"roomType" : "roomType2",
			"mealPlan" : "mealPlan2",
			"bedType" : "bedType1",
			"rate" : 100,
			"hotelId" : 12,
			"bookingChannelDesc" : "Direct",
			"seasonDesc" : "RED"
		}, {
			"roomType" : "roomType2",
			"mealPlan" : "mealPlan2",
			"bedType" : "bedType2",
			"rate" : 100,
			"hotelId" : 12,
			"bookingChannelDesc" : "Direct",
			"seasonDesc" : "RED"
		} ]
	};