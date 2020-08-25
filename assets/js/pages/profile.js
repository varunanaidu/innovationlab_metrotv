$( function () {

	$('.btn-profile').on('click', function() {
		$('#default-modal').modal('show');
	});;

	$('#user_photo').on('change', function() {
		var data = new FormData();
		data.append('user_photo', $(this).prop('files')[0]);
		$.ajax({
			url : base_url + 'profile/update_photo',
			type : 'POST',
			cache: false,
			contentType: false,
			processData: false,
			data : data,
			success : function (data) {
				window.location.reload();
			}
		});
	});
	
	$("#profile-form").ajaxForm({
		dataType: "json",
		url : base_url + 'profile/update',
		beforeSubmit: function(){
			$('#btn-submit').removeClass('btn-primary').addClass('btn-warning').prop('disabled', true);
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
			$('#btn-submit').removeClass('btn-warning').addClass('btn-primary').prop('disabled', false);
		}
	});

	$('#btn-track').on('click', function(e) {
		e.preventDefault();
		var data = {'idea_id' : $('#temp_idea').val()}

		$.ajax({
			url : base_url + 'profile/track',
			type : 'POST',
			dataType : 'JSON',
			data : data,
			success : function (data) {
				if (data.type == 'done') {
					$('#idea_id_container').text(data.msg[0].idea_id);
					$('#idea_subject_container').text(data.msg[0].idea_subject);
					$('#status_container').text(data.msg[0].status);
				}else{
					Swal.fire ( "Failed!", data.msg, "error" );
				}
			}
		});
	});
	
});