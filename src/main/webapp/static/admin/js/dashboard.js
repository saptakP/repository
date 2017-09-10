function manageAccessibleHotelById(formId, hotelId,  action, htlName) {
	
	var inputHtlID = document.createElement("input");
	inputHtlID.setAttribute("type", "hidden");
	inputHtlID.setAttribute("name", "hdnHotelId");
	inputHtlID.setAttribute("value", hotelId);
	
	var inputHtlName = document.createElement("input");
	inputHtlName.setAttribute("type", "hidden");
	inputHtlName.setAttribute("name", "hdnHotelName");
	inputHtlName.setAttribute("value", htlName);
	
	document.getElementById(formId).appendChild(inputHtlID);
	document.getElementById(formId).appendChild(inputHtlName);
	document.getElementById(formId).action = action;
	
	document.getElementById(formId).submit();
	
}

function updateReviewById(reviewId,status) {
	$.ajax({
        type: 'GET',
        url: _ctx + '/updateReview',
        data : {reviewId:reviewId, status:status},
        success : function(response) {
        	var res = response;
        	if(res === 'S') {
        		alert(res);
        		$('#rspi'+reviewId+' span').text('Approved');
        		$('#rspi'+reviewId+' span').prop('onclick',null).off('click');
        	} else {
        		
        	}
        },
        error : function() {
           
        }
    });
}