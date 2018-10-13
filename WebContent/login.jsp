<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome @ Data Entry App</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
	
	<script type="text/javascript">
	function login() {
		var uname = document.getElementById("userName").value;
		var password = document.getElementById("password").value;
		if (uname == '') {
			alert("Please Enter Email");
			document.getElementById("userName").focus();
			return false;
		} else if (password == '') {
			alert("Please enter Password");
			document.getElementById("password").focus();
			return false;
		}
	}
</script>
	
</head>
<body>
	<div class="container-fluid w-50 m-5 p-3" style="background-color: #e1e1e1; ">
	
		<h1>DATA ENTRY APP <span class="badge badge-secondary">IM</span></h1>
		<hr style="background-color:aqua;">
		<form method="post" action="Login" onsubmit="return login();">
			<div class="form-group row">
				<label for="userName" class="col-sm-2 col-form-label">Email</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="userName" name="userName"
						placeholder="Email" >
				</div>
			</div>
			<div class="form-group row">
				<label for="password" class="col-sm-2 col-form-label">Password</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="password" name="password"
						placeholder="Password">
				</div>
			</div>
			<fieldset class="form-group">
				<div class="row">
					<legend class="col-form-label col-sm-2 pt-0">User</legend>
					<div class="col-sm-10">
						<div class="form-check">
							<input class="form-check-input" type="radio" name="gridRadios"
								id="adminRadio" value="adminRadio" checked> <label
								class="form-check-label" for="gridRadios1"> Admin User
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="gridRadios"
								id="userRadio" value="userRadio"> <label
								class="form-check-label" for="gridRadios2"> Data Entry User
							</label>
						</div>
					</div>
				</div>
			</fieldset>
			<div class="form-group row">
				<div class="col-sm-10">
					<button type="submit" class="btn btn-primary">Sign in</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>