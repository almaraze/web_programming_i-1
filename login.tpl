<html>

<head>

	<!-- Basics -->
	
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	
	<title>Login</title>

	<!-- CSS -->

	<link rel="stylesheet" type="text/css" href="/css/reset.css">
	<link rel="stylesheet" type="text/css" href="/css/animate.css">
    <link rel="stylesheet" type="text/css" href="/css/styles.css">
    
	
</head>

	<!-- Main HTML -->
	
<body>
	
	<!-- Begin Page Content -->
	
	<div id="container">
		
		<form action="/login" method="POST">
		
		<label for="name">Username:</label>
		
		<input type="name" name="username">
		
		<label for="password">Password:</label>
		
		<p><a href="#">Forgot your password?</a>
		
		<input type="password" value="FakePSW" name="password" id="myInput">		
		
		<label for="csrf_token">Token:</label>		
				
		<input type="checkbox" onclick="myFunction()">
		
		<label class="showPW" for="showPW">Show Password</label>
		
		<input type="text" name="csrf_token" value="{{csrf_token}}"/>
		
		<div id="lower">
		
		<input type="checkbox"><label class="check" for="checkbox">Keep me logged in</label>
		
		<input type="submit" name="login" value="Login"/>
		
		</div>
		
		</form>
		
	</div>
<script>
function myFunction() {
  var x = document.getElementById("myInput");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>
	<!-- End Page Content -->
	
</body>


</html>
	
	
	
	
		
	