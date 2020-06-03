<?php
session_start();

// including database
include('db_con.php');

//Register operation
if(isset($_POST['submit'])){

	$fname = $_REQUEST['fname'];
	$lname = $_REQUEST['lname'];
	$dob = $_REQUEST['bday'];
	$gender = $_REQUEST['gender'];
	$email = $_REQUEST['email'];
	$pwd = $_REQUEST['pwd'];

	$qry = "insert into user(f_name, l_name, dob, gender, user_email, user_pwd) values('".$fname."', '".$lname."','".$dob."','".$gender."','".$email."','".$pwd."')";
	echo $qry;
	if(mysqli_query($GLOBALS['conn'], $qry)){
		echo "Registration Successful!";
		header('location: index.html');
	}else{
		echo "Some thing error...";
		mysqli_error($GLOBALS['conn']);
	}
}



//Login Operation
if(isset($_POST['loginsubmit'])){

	$lemail = $_POST['lemail'];
	$lpwd = $_POST['lpwd'];

	$sql = "SELECT * FROM user WHERE user_email='".$lemail."' AND user_pwd='".$lpwd."'";

	$rs = mysqli_query($GLOBALS['conn'], $sql);
	if(mysqli_num_rows($rs) == 1){
		echo "Login successful!";
		header('location: home.php');
		$_SESSION['user'] = $lemail;
	}else{

		echo "Login failed";
		echo $sql;
		echo mysqli_error();
		//header('location: index.html');

	}

}

//AddData Operation
if(isset($_POST['data_submit'])){

	$demail = $_SESSION['user'];
	$head = $_POST['data_heading'];
	$body = $_POST['data_body'];
	$date = date("Y/m/d");

	$qry = "insert into data(data_email, data_head, data_body, data_date) values('".$demail."','".$head."', '".$body."','".$date."')";
	echo $qry;

	if(mysqli_query($GLOBALS['conn'], $qry)){
		echo "data addded...";
		header('location: home.php');
	}else{
		echo "Some thing error...".$qry;
	}

}



//DeleteData Operation
if(isset($_GET['delItem']) && isset($_SESSION['user'])){
	$id = $_GET['delItem'];

	$sql = "DELETE FROM data WHERE data_id=".$id;


	if (mysqli_query($GLOBALS['conn'], $sql)) {
    		echo "Record deleted successfully";
		header('location: home.php');
	} else {
   		echo "Error deleting record: " . mysqli_error($conn);
	}
}else{
	header('location: home.php');
}


//Update password
if(isset($_POST['change_pwd'])){
	if(isset($_SESSION['user'])){
		$email = $_SESSION['user'];
		$old_pwd = $POST['OP_pwd'];
		$new_pwd = $POST['NP_pwd'];
		echo $old_pwd;

		$qry1 = "SELECT * FROM user WHERE user_email='".$email."' AND user_pwd='".$old_pwd."'";
		$var = mysqli_query($GLOBALS['conn'], $qry1);

   		if(mysqli_num_rows($var) == 1){
			$sql = "UPDATE user SET user_pwd ='".$new_pwd."' WHERE user_email='".$email."'";
			if (mysqli_query($GLOBALS['conn'], $sql)) {
				echo "Password updated successfuly!";
				header('location: index.html');
			}else{
				echo "Error updating record: " . mysqli_error($conn);
			}
		} else {
   			echo "Your old password does not matches record: " . mysqli_error($conn);
		}
	}
}

//View data
if(isset($_POST['v_id'])){
	//if(isset($_SESSION['user'])){
		$qry = "select * from data where data_id=".$_POST['v_id'];
		$rs = mysqli_query($GLOBALS['conn'], $qry);
		$rw = mysqli_fetch_array($rs);
		$array = array('head'=>$rw['data_head'], 'body'=>$rw['data_body']);

		// $array = 'head'.$rw['data_head'].'body'.$rw['data_body'];
		$res = json_encode($array);

		echo $res;
		header('HTTP/1.1 200 OK');
	//}
}

?>
