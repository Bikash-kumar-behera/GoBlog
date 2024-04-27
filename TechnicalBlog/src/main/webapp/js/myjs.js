function sendOtp(){
	console.log($('#sendEmailBtn').value());
	$('#sendEmailBtn').click(function (){
                $.ajax({
                    type: "post",
                    url: "/getOtp", 
                    data: "email=" + $('#email').val() + "&subject="+$('#subject').val() + "&msg=" + $('#msg').val(),
                    success: function(msg){      
                        //
                    }
                });
            });
}