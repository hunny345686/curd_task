<!DOCTYPE html>
<html>
<head>
	<title></title>
	 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script> 
</head>
<body>
 <div class="container">
 	<h2 class="text-info text-center"> Curd Opration</h2>
 	<!-- Button to Open the Modal -->
<button type="button" class="btn btn-warning float-right" data-toggle="modal" data-target="#myModal">
  Add User
</button>

<!-- The Modal -->
<div class="modal" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Ajax Curd Opration </h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <!-- Modal body -->
      <div class="modal-body">
       <div class="form-group">
       	<label>First Name</label>
       	<input type="text" name="" id="firstname" class="form-control" placeholder="Firstname">
       </div>
       <div class="form-group">
       	<label>Last Name</label>
       	<input type="text" name="" id="lastname" class="form-control" placeholder="Lastname">
       </div>
       <div class="form-group">
       	<label>Email</label>
       	<input type="email" name="" id="email" class="form-control" placeholder="Email">
       </div>
       <div class="form-group">
       	<label>Mobile</label>
       	<input type="text" name="" id="mobile" class="form-control" placeholder="Mobile">
       </div>
	   <div class="form-group">
       	<label>DOB</label>
       	<input type="date" name="" id="dob" class="form-control">
       </div>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
      	 <button type="button" class="btn btn-success" data-dismiss="modal" onclick="addrecords()">Save</button>
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>
<h2 class="text-danger">All Records</h2>
<div id="records_con">	
</div>

<!-- update modal ------------------>

	<!-- Button to Open the Modal 
<button type="button" class="btn btn-warning float-right" data-toggle="modal" data-target="#myModal">
  Open modal
</button> -->

<!-- The Modal -->
<div class="modal" id="update_user">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Ajax Update modal </h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <!-- Modal body -->
      <div class="modal-body">
       <div class="form-group">
       	<label>First Name</label>
       	<input type="text" name="" id="update_firstname" class="form-control" placeholder="Firstname">
       </div>
       <div class="form-group">
       	<label>Last Name</label>
       	<input type="text" name="" id="update_lastname" class="form-control" placeholder="Lastname">
       </div>
       <div class="form-group">
       	<label>Email</label>
       	<input type="email" name="" id="update_email" class="form-control" placeholder="Email">
       </div>
       <div class="form-group">
       	<label>Mobile</label>
       	<input type="text" name="" id="update_mobile" class="form-control" placeholder="Mobile">
       </div>
	   <div class="form-group">
       	<label>DOB</label>
       	<input type="date" name="" id="update_dob" class="form-control">
       </div>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
      	 <button type="button" class="btn btn-success" data-dismiss="modal" onclick="update_user_detail()">Save</button>
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        <input type="hidden" name="" id="hidden_id" >
      </div>

    </div>
  </div>
</div>
 </div>

 <script>

 	//---start show records in script---------------


 	$(document).ready(function(){
 		readrecords();
 	});

 		function readrecords(){

 			var readrecord = "readrecord";
 			$.ajax({
 				url: "lode.php",
 				type: 'post',
 			    data: {readrecord:readrecord},

 			success:function(data,status){
 				$('#records_con').html(data);
 			}

 			});
 		}

 	//---start show records in script----------
 	
// ------------ start Ajax inser record in script----------------

 	function addrecords(){
 		var fname = $('#firstname').val();
 		var lname = $('#lastname').val();
 		var email = $('#email').val();
 		var mobile = $('#mobile').val();
		var dob =$('#dob').val();

		if(!mobile.match('[0-9]{10}'))  {
                alert("Please put 10 digit mobile number");
                return;
            }  
		
 		$.ajax({
 			url: "lode.php",
 			type: 'post',
 			data: {fname:fname,
 					lname:lname,
 					email:email,
 					mobile:mobile,
					 dob:dob
 			},

 			success:function(data,status){
 				readrecords(); // call show recordes fuction
 			}
 		});
 	}
 	// ------------ end Ajax inser record in script----------------

 // --------------delete user------------

		function delete_user(deleteid){
			var conf = confirm("are you sure");
			if(conf==true){
				$.ajax({
					url:'lode.php',
					type:'post',
					data:{deleteid:deleteid},
					success:function(data,status){
						readrecords();
					}						 

				});
			}
		}

		function edit_user(update_id){
			$('#hidden_id').val(update_id); 
			//console.log(update_id);

			$.post('lode.php', {update_id:update_id},
				function(data,status){
					//console.log(data)
					var user = JSON.parse(data);
					//console.log(data)
					$('#update_firstname').val(user.firstname);
					$('#update_lastname').val(user.lastname);
					$('#update_email').val(user.email);
					$('#update_mobile').val(user.mobile);
					$('#update_dob').val(user.dob);
					//$('#hidden_id').val(user.id);
				}
			  );
			$('#update_user').modal('show'); 
			}
		

		// Update User Detail--------------

		function update_user_detail(){
			var firstname1 = $("#update_firstname").val();
			var lastname1 = $("#update_lastname").val();
			var email1 = $("#update_email").val();
			var mobile1 = $("#update_mobile").val();
			var dob1 = $("#update_dob").val();

			//console.log(firstname1);

			var hidden_user_id1 = $('#hidden_id').val();
			//console.log(hidden_user_id1);
			$.post("lode.php",{
				hidden_user_id1:hidden_user_id1,
				firstname1:firstname1,
				lastname1:lastname1,
				email1:email1,
				mobile1:mobile1,
				dob1:dob1
			},
			function(data,status){
			//	console.log(data)
				$('#update_user').modal('hide'); 
				readrecords();
			}
			)
		}

</script>
 </script>
</body>
</html>
















