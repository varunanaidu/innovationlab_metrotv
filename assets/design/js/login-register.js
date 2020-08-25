$( function () {

    $(document).ready(function() {
        $('#loginModal').modal('show');
    });

    $(document).on('click', '#showLoginBtn, #showRegisterBtn, #showLoginBtn2', function() {

        if ( this.id == 'showLoginBtn' || this.id == 'showLoginBtn2' ) {
            $('#registerModal').modal('hide');
            $('#loginModal').modal('show');
        }else{
            $('#loginModal').modal('hide');
            $('#registerModal').modal('show');
        }

    });

    $('#login-form').on('submit', function(event) {
        event.preventDefault();

        $.ajax({
            url : base_url + 'home/signin',
            type : "POST",
            dataType : "JSON",
            data : $(this).serialize(),
            beforeSend : function(){
                $("#submit-login").html ( 'Processing...' ).prop("disabled", true);
            },
            success : function(data){
                if (data.type == 'done') window.location.href = data.url; 
                else Swal.fire("Failed!", data.msg, "error");
            },
            error : function(){
                Swal.fire ( "Failed!", "Error Occurred, Please refresh your browser.", "error");
            },
            complete : function(){
                $("#submit-login").html ( 'Masuk' ).prop("disabled", false);
            }
        });

    });

    $('#register-form').on('submit', function(event) {
        event.preventDefault();

        $.ajax({
            url : base_url + 'home/signup',
            type : "POST",
            dataType : "JSON",
            data : $(this).serialize(),
            beforeSend : function(){
                $("#submit-register").html ( 'Processing...' ).prop("disabled", true);
            },
            success : function(data){
                var sa_title = (data.type == 'done') ? "Success!" : "Failed!";
                var sa_type = (data.type == 'done') ? "success" : "warning";
                Swal.fire({ title:sa_title, type:sa_type, html:data.msg }).then(function(){ 
                    if (data.type == 'done') window.location.href = data.url; 
                });         
            },
            error : function(){
                Swal.fire ( "Failed!", "Error Occurred, Please refresh your browser.", "error");
            },
            complete : function(){
                $("#submit-register").html ( 'Daftar' ).prop("disabled", false);
            }
        });

    });

    function shakeModal(){
        $('#loginModal .modal-dialog').addClass('shake');
        $('.error').addClass('alert alert-danger').html("Invalid email/password combination");
        $('input[type="password"]').val('');
        setTimeout( function(){ 
            $('#loginModal .modal-dialog').removeClass('shake'); 
        }, 1000 ); 
    }
});

