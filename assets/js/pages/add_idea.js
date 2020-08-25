$( function () {

	new RangeInput(document.querySelector('.range'));
	$('.range-output output').text( $('#idea_budget').val() );

	$('#idea_budget').rangeslider();

	$('#idea_budget').on('input', function() {
		$('.range-output output').text( $(this).val() );
	});

	$('#idea_photo').on('change', function() {
		if (this.files && this.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#previewImg').attr('src', e.target.result);
			}
			reader.readAsDataURL(this.files[0]);
		}
	});
	
	$("#idea-form").ajaxForm({
		dataType: "json",
		url : base_url + 'idea/save',
		beforeSerialize : function (form, opt) {	
			$('#challenge_id').val( $('#challenge_id').data('value') );
		},
		beforeSubmit: function(){
			var file_size = 0;
			var image_size = 0
			image_size = $('#idea_photo')[0].files[0].size;

			for (var i = 0; i < $('#attachment')[0].files.length; i++) {
				file_size+=$('#attachment')[0].files[i].size;
			}

			if (file_size > 26214400 || image_size > 204800) {
				Swal.fire("Failed!", "Ukuran foto lebih dari 200KB atau keseluruhan file lebih dari 25MB", "error");
				return false;
			}else{
				$('#btn-submit').prop('disabled', true);
			}
		},
		success: function(data){
			if (data.type == 'done') window.location.href = data.url; 
			else Swal.fire("Failed!", data.msg, "error");
		},
		error: function(){
			Swal.fire ( "Failed!", "Error Occurred, Please refresh your browser.", "error" );
		},
		complete: function(){
			$('#btn-submit').prop('disabled', false);
		}
	});

});