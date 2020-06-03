<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Memorica</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" />
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
		<?php
   			session_start();
			if(!isset($_SESSION['user'])){
				header('location: index.html');
			}
			include('db_con.php');
		?>
	</head>

	<body>
		<div class="jumbotron text-center">
			<h1>Memorica</h1>
			<h3>My Personal Diary</h3>
			<h4>Collecting my memories..keeping it in <strong>Memorica</strong>&acute;s safe hand!</h4>
		</div>

		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<button type="button" class="btn btn-primary btn-sm" id="profile" data-toggle="modal" data-target="#ProfileModal">
						<a class="navbar-brand" href="#">
							<?php $qry = "select * from user where user_email='".$_SESSION['user']."'";
		$rsname = mysqli_query($GLOBALS['conn'], $qry);
		while($rwname = mysqli_fetch_array($rsname)){
		echo $rwname['f_name'];
		}
		?>'s memories
						</a>
					</button>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#">Gallery</a></li>
					</ul>
					<form class="navbar-form navbar-left" action="/action_page.php">
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Search" name="search" />
							<div class="input-group-btn">
								<button class="btn btn-default" type="submit">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</div>
						</div>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<button type="button" class="btn btn-primary btn-lg" id="write" data-toggle="modal" data-target="#WriteModal"><span class="glyphicon glyphicon-pencil"></span></button>
						<a href="logout.php">
							<button type="button" class="btn btn-primary btn-lg" id="logout"><span class="glyphicon glyphicon-log-out"></span></button>
						</a>
					</ul>
				</div>
			</div>
		</nav>

		<!--==========================

		Profile Modal start

	============================-->
		<div id="ProfileModal" class="modal fade" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->

				<div class="modal-content">
					<form method="post" action="operation.php">
						<div class="modal-body">
							<div class="row">
								<div class="col-md-6">
									<div class="thumbnail">
										<a href="SAGNIK.png" target="_blank">
											<img src="SAGNIK.png" class="img-rounded" alt="profile" style="width: 100%; height: 300px;" />
										</a>
									</div>
									<div>
										<form action="upload.php" method="post" enctype="multipart/form-data">
											<p>Select image to upload:</p>
											<input type="file" name="img_file" id="img_file" /><br />
											<input type="submit" class="btn btn-info" name="img_submit" id="img_submit" value="Upload" />
										</form>
									</div>
								</div>
								<div class="col-md-6">
									<?php
					 $sql = "select * from user where user_email='".$_SESSION['user']."' ";
						 $rsuser = mysqli_query($GLOBALS['conn'], $sql);
					 while($rwuser = mysqli_fetch_array($rsuser)){
				?>
									<br />
									<p>
										Name :
										<?php echo $rwuser['f_name']." ".$rwuser['l_name']; ?>
									</p>
									<p>
										Date of Birth:
										<?php echo $rwuser['dob']; ?>
									</p>
									<p>
										Gender:
										<?php echo $rwuser['gender']; ?>
									</p>
									<p>
										Email id:
										<?php echo $rwuser['user_email']; ?>
									</p>
									<br />
									<?php } ?>
									<form action="operation.php" method="post">
										<input type="password" id="OP_pwd" name="OP_pwd" placeholder="Old Password" /><br />
										<br />
										<input type="password" id="NP_pwd" name="NP_pwd" placeholder="New Password" /><br />
										<br />
										<input type="password" id="CNP_pwd" name="CNP_pwd" placeholder="Confirm New Password" onblur="pwdFunction()" /><br />
										<br />
										<div class="btn-group">
											<input type="submit" name="change_pwd" class="btn btn-info" id="cpwd_submit" value="Update Password" disabled />
											<button type="reset" name="pwd_reset" class="btn btn-info"><span class="glyphicon glyphicon-refresh"></span></button>
										</div>
									</form>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>

		<!--==========================

		Profile Modal end

	============================-->

		<!--==========================

		Write modal start

	============================-->

		<div id="WriteModal" class="modal fade" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->

				<div class="modal-content">
					<form method="post" action="operation.php">
						<div class="modal-header">
							<h4>Add Heading</h4>
							<input type="text" name="data_heading" id="heading" placeholder="Heading" maxlength="60" class="form-control" required style="margin-bottom: 5px;" />
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>
						<div class="modal-body">
							<h4>Write your memories...</h4>
							<textarea class="form-control" name="data_body" rows="8" id="comment" style="margin-bottom: 5px;"></textarea>

							<!--<input type="button" name="create_user" value="Create User" class="btn btn-info" data-toggle="modal" data-target="#forgotPassword" data-dismiss="modal" />-->
						</div>
						<div class="modal-footer">
							<div class="btn-group">
								<input type="submit" name="data_submit" value="Save Writing" class="btn btn-info" />
								<button type="reset" name="reset" class="btn btn-info"><span class="glyphicon glyphicon-refresh"></span></button>
							</div>
							<button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
						</div>
					</form>
				</div>
			</div>
		</div>

		<!--==========================

		Write modal end

	============================-->

		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<?php
				$sql = "select distinct data_date from data where data_email='".$_SESSION['user']."' order by data_date desc ";
				$rsdate = mysqli_query($GLOBALS['conn'], $sql);
				$x=1;
				while($rwdata = mysqli_fetch_array($rsdate)){
			?>
					<div class="panel panel-default">
						<div class="panel-heading">
							<?php echo $rwdata['data_date']; ?>
						</div>

						<div class="panel-body">
							<table class="table table-bordered table-responsive">
								<?php
					$qry = "select * from data where data_email='".$_SESSION['user']."' and data_date='".$rwdata['data_date']."' order by data_id desc";
					$rs = mysqli_query($GLOBALS['conn'], $qry);
					while($rw2 = mysqli_fetch_array($rs)){
				?>
								<tr>
									<td style="text-align: center; width: 50px;">
										<?php echo $x; $x++;?>
									</td>
									<td>
										<strong><?php echo $rw2['data_head'];?></strong>
										<br />
										<?php
							$chars = $rw2['data_body'];
							if(strlen($chars)>50){ echo mb_substr($chars, 0, 50)."..."; }else{ echo $chars; } ?>
									</td>
									<td style="text-align: center; width: 100px;">
										<!--<button class="btn btn-info btn-sm" onclick="viewModal(<?php echo $rw2['data_id'];?>)" data-toggle="modal" data-target="#viewModal"><span class="glyphicon glyphicon-eye-open" id="view1"></span> &nbsp;View </button>-->
										<button type="button" class="btn btn-info btn-sm" onclick="viewModal(<?php echo $rw2['data_id'];?>)" data-toggle="modal" data-target="#viewModal"><span class="glyphicon glyphicon-eye-open" id="view1"></span> &nbsp;View</button>
									</td>
									<td style="text-align: center; width: 100px;">
										<a href="operation.php?delItem=<?php echo $rw2['data_id']?>"> <span name="delItem" class="glyphicon glyphicon-trash"></span></a>
									</td>
								</tr>

								<?php
					}
					?>
							</table>
						</div>
					</div>
					<?php
			}

			?>
				</div>
			</div>
		</div>

		<!--==========================

		View modal start

	============================-->

	<div id="viewModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title" id="modalHead">Modal Header</h4>
				</div>
				<div class="modal-body">
					<p id="modalBody">Some text in the modal.</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<!--==========================

		View modal end

	============================-->

		<script>
			function pwdFunction() {
				var pwd = document.getElementById("NP_pwd").value;
				var cpwd = document.getElementById("CNP_pwd").value;
				if (pwd == cpwd) {
					document.getElementById("cpwd_submit").disabled = false;
				} else {
					window.alert("Passwords are not same.Check again");
					document.getElementById("cpwd_submit").disabled = true;
				}
			}

			function viewModal(v_id) {
				var http = new XMLHttpRequest();
				var url = "operation.php";
				var params = "v_id=" + v_id;
				http.open("POST", url, true);
				http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
				http.onreadystatechange = function () {
					if (http.readyState == 4 && http.status == 200) {
						var resp = JSON.parse(http.responseText);
						var head = resp['head'];
						var body = resp['body'];

						document.getElementById("modalHead").innerHTML = head;
						document.getElementById("modalBody").innerHTML = body;
					}
				};
				http.send(params);
			}

		</script>

	</body>
</html>
