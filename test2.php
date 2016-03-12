<?php
	$id=$_GET['id'];
	require_once "config.php";
	$mname="";
	$email="";





		if(isset($_POST['update']))
		{
			
			$mname=$_POST["Name"];
			 $email=$_POST["Email"];
			require_once "config.php";
			
			  $db=get_connection();
				$result = "update  test set Name='$mname' , Email='$email' where Id='$id'";
				$sql = mysql_query($result);
				echo "Success";
			
				mysql_close($db);
		}
		else 
		{
			$db=get_connection();
			$result = "Select * from test where Id='$id'";
			$query = mysql_query($result);
			
			while($row=mysql_fetch_array($query))
			{
				
				$mname= $row['Name'];
				$email= $row['Email'];
				
				
			}
		}

?>

<!DOCTYPE html>
<html lang="en">

<head>

 
    <title>New User</title>
    
</head>

<body>

<div>

							<form role="form" method="post" action="#">
									<div>
										
										 Name : 
										<input id="uname"  placeholder="Name" name="Name" type="text" autofocus value="<?php echo $mname; ?>">
										<input type="hidden" name="id" value="<?php echo $mname;?>"
                 
									</div>
									
								
									<div>
										E-Mail :
										<input id="uemail" placeholder="E-mail" name="Email" type="email" value="<?php echo $email; ?>" autofocus>
											
									</div>
									
									<div>
										
										<input id="uemail" name="update" type="submit" value="Update">
                                        
									</div>
									
									
							</form>
    </div>

    


</body>

</html>
