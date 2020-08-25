$( function () {
	
	$("#post-form").ajaxForm({
		dataType: "json",
		url : base_url + 'idea/save_post',
		beforeSubmit: function(){
			$('#btn-submit').prop('disabled', true);
		},
		success: function(data){
			var sa_title = (data.type == 'done') ? "Success!" : "Failed!";
			var sa_type = (data.type == 'done') ? "success" : "warning";
			Swal.fire({ title:sa_title, type:sa_type, html:data.msg }).then(function(){ 
				if (data.type == 'done') window.location.reload();
			});
		},
		error: function(){
			Swal.fire ( "Failed!", "Error Occurred, Please refresh your browser.", "error" );
		},
		complete: function(){
			$('#btn-submit').prop('disabled', false);
		}
	});

	$(document).on('click', '.view-idea', function() {
		var data = {'idea_id' : $(this).data('idea')};
		$.ajax({
			url : base_url + 'idea/view_idea',
			type : 'POST',
			dataType : 'JSON',
			data : data,
			success : function (data) {
				if (data.type == 'done') {
					window.location.href = data.url;
				}
			}
		});
	});


});