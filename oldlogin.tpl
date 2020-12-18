<html>

<head>

	<!-- Basics -->
	
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	
	<title>Login</title>

	<!-- CSS -->
	
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/styles.css">
	
</head>

	<!-- Main HTML -->
	
<body>
	
	<!-- Begin Page Content -->
	
	<div id="container">
		
		<form action="/login" method="POST">
		
		<label for="username">Username:</label>
		
		<input type="username">
		
		<label for="password">Password:</label>
		
		<p><a href="#">Forgot your password?</a>
		
		<input type="password">
		
		<div id="lower">
        
        <hr>
    
        Token: <input type="text" size="100" maxlength="100" name="csrf_token" value="{{csrf_token}}"/><br>
    
        <hr>
		
		<input type="checkbox"><label class="check" for="checkbox">Keep me logged in</label>
		
		<input type="submit" name="login" value="Login"/>
		
		</div>
		
		</form>
		
	</div>
	
	
	<!-- End Page Content -->
	
</body>

</html>


<p>Login</p>
<form action="/login" method="POST">
    User Name: <input type="text" size="100" maxlength="100" name="username"/><br>
    Password:  <input type="text" size="100" maxlength="100" name="password"/><br>
    <hr>
    Token: <input type="text" size="100" maxlength="100" name="csrf_token" value="{{csrf_token}}"/><br>
    <hr>
    <input type="submit" name="login" value="Login"/>
</form>