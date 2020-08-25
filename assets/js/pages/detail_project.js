$( function () {

	$( ".column" ).sortable({
		connectWith: ".column",
		handle: ".portlet-header",
		cancel: ".portlet-toggle",
		placeholder: "portlet-placeholder ui-corner-all",
	});

	$( ".portlet" )
	.addClass( "ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" )
	.find( ".portlet-header" )
	.addClass( "ui-widget-header ui-corner-all" )


	$( ".portlet-toggle" ).click(function() {
		var icon = $( this );
		icon.toggleClass( "ui-icon-minusthick ui-icon-plusthick" );
		icon.closest( ".portlet" ).find( ".portlet-content" ).toggle();
	});
	
	$(document).on('sortreceive', '.column', function(event, ui) {

		var data = {
			'task_position' : $(this).data('value'),
			'task_id'		: ui.item.data('task'),
			'idea_id'		: $(this).find('.portlet').data('idea'),
		};

		$.ajax({
			url : base_url + 'project/move_task',
			type : 'POST',
			dataType : 'JSON',
			data : data,
			success : function (res) {
				console.log(res);
				if (!res.type) {
					Swal.fire("Failed!", res.msg, "error").then( function () {
						window.location.reload();
					});
				}
			}
		});
	});

	$('.add-todo').on('click', function() {
		$('#default-modal').modal('show');
	});
	
	$("#task-form").ajaxForm({
		dataType: "json",
		url : base_url + 'project/save_task',
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

	$('.btn-add-team').on('click', function() {
		$('#default-modal-2').modal('show');
	});
	
	$("#team-form").ajaxForm({
		dataType: "json",
		url : base_url + 'project/add_team',
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
	
});