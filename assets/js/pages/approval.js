$( function () {

	$(document).on('click', '.add-team', function() {
		var tr1 = '<tr><td></td><td><div class="form-group"><select class="form-control" name="user_id[]" id="user_id" required=""><option value=""></option>';
		$.ajax({
			url : base_url + 'approval/get_user',
			type : 'POST',
			dataType : 'JSON',
			success : function (data) {
				if (data.type == 'done') {
					for (var i = 0; i < data.msg.length; i++) {
						tr1+='<option value="'+data.msg[i].user_id+'">'+data.msg[i].user_fname+'</option>';
					}
					tr1+='</select></div></td><td><div class="form-group"><input type="text" class="form-control" name="position[]" id="position" required="" ></div></td></tr>';
					$('#teamBodyCont').append(tr1);
				}
			}
		});
	});

	$(document).on('click', '#btn-question', function() {
		
		var data = {
			'key' : $(this).data('value'),
			'idea_id2' : $(this).data('idea')
		};

		if ( $(this).data('value') == 2 ) {
			$.ajax({
				url : base_url + 'approval/next_tr',
				type : 'POST',
				dataType : 'JSON',
				data : data,
				success : function (data) {
					var sa_title = (data.type == 'done') ? "Success!" : "Failed!";
					var sa_type = (data.type == 'done') ? "success" : "warning";
					Swal.fire({ title:sa_title, type:sa_type, html:data.msg }).then(function(){ 
						if (data.type == 'done') $('#team-modal').modal('show');
					});
				}
			});
		}else{
			$('#key').val( $(this).data('value') );
			$('#idea_id2').val( $(this).data('idea' ));
			$('#default-modal').modal('show');
		}

	});

	$(document).on('click', '#btn-verification', function() {
		
		var data = {
			'key' : $(this).data('value'),
			'idea_id2' : $(this).data('idea')
		};

		if ( $(this).data('value') == 1 ) {
			$.ajax({
				url : base_url + 'approval/next_tr',
				type : 'POST',
				dataType : 'JSON',
				data : data,
				success : function (data) {
					var sa_title = (data.type == 'done') ? "Success!" : "Failed!";
					var sa_type = (data.type == 'done') ? "success" : "warning";
					Swal.fire({ title:sa_title, type:sa_type, html:data.msg }).then(function(){ 
						if (data.type == 'done') window.location.href = base_url + 'approval/verification_idea'
					});
				}
			});
		}else{
			$('#key').val( $(this).data('value') );
			$('#idea_id2').val( $(this).data('idea' ));
			$('#default-modal').modal('show');
		}

	});
	
	$("#reject-form").ajaxForm({
		dataType: "json",
		url : base_url + 'approval/next_tr',
		beforeSubmit: function(){
			$('#btn-submit').removeClass('btn-danger').addClass('btn-warning').prop('disabled', true);
		},
		success: function(data){
			var sa_title = (data.type == 'done') ? "Success!" : "Failed!";
			var sa_type = (data.type == 'done') ? "success" : "warning";
			Swal.fire({ title:sa_title, type:sa_type, html:data.msg }).then(function(){ 
				if (data.type == 'done') window.location.href = data.url; 
			});
		},
		error: function(){
			Swal.fire ( "Failed!", "Error Occurred, Please refresh your browser.", "error" );
		},
		complete: function(){
			$('#btn-submit').removeClass('btn-warning').addClass('btn-danger').prop('disabled', false);
		}
	});
	
	$("#team-form").ajaxForm({
		dataType: "json",
		url : base_url + 'approval/save_team',
		beforeSubmit: function(){
			$('#btn-submit').removeClass('btn-danger').addClass('btn-warning').prop('disabled', true);
		},
		success: function(data){
			var sa_title = (data.type == 'done') ? "Success!" : "Failed!";
			var sa_type = (data.type == 'done') ? "success" : "warning";
			Swal.fire({ title:sa_title, type:sa_type, html:data.msg }).then(function(){ 
				if (data.type == 'done') window.location.href = data.url; 
			});
		},
		error: function(){
			Swal.fire ( "Failed!", "Error Occurred, Please refresh your browser.", "error" );
		},
		complete: function(){
			$('#btn-submit').removeClass('btn-warning').addClass('btn-danger').prop('disabled', false);
		}
	});
	
});