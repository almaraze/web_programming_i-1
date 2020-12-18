<html>

<head>

	<!-- Basics -->

	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="google-signin-client_id" content="488698820452-t7kb3gotol12949va445a05nu1uil42s.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">


	<title>Login</title>

	<!-- CSS -->

	<link rel="stylesheet" type="text/css" href="/static/css/reset.css">
	<link rel="stylesheet" type="text/css" href="/static/css/animate.css">
    <link rel="stylesheet" type="text/css" href="/static/css/styles.css">


</head>

	<!-- Main HTML -->

<body>

    <!-- Begin Page Content -->
    <hr><h3 class="w3-block w3-grey w3-center">Basic Todo List, version 1.1</h3><hr>

	<div id="container">

		<form id="myform" action="/login" method="POST">

		<label for="name">Username:</label>

		<input type="name" id="username" name="username">

		<label for="password">Password:</label>

		<p><a href="#">Forgot your password?</a>

		<input type="password" value="FakePSW" name="password" id="password">

		<label for="csrf_token">Token:</label>

		<input type="checkbox" onclick="myFunction()">

		<label class="showPW" for="showPW">Show Password</label>

        <input type="text" name="csrf_token" value="{{csrf_token}}"/>

        <div class="g-signin2" data-onsuccess="onSignIn"></div>

		<div class="data">
			<p>Profile Details</p>
			<img id="pic" class="img-circle" width"100" height="100"/>
			<p>Email Address</p>
			<p id="email" class="alert alert-danger"></p>
			<a href="#" onclick="signOut()">Sign Out</a>

		</div>

		<div id="lower">

		<input type="checkbox"><label class="check" for="checkbox">Keep me logged in</label>

		<input type="submit" name="login" value="Log In"/>

        </div>

        </form>
	</div>
<script>
    function myFunction() {
        var x = document.getElementById("password");
        if (x.type === "password") {
            x.type = "text";
        } else {
            x.type = "password";
        }
    }

	function onSignIn(googleUser) {
    var profile = googleUser.getBasicProfile();
        console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
        console.log('Name: ' + profile.getName());
        console.log('Image URL: ' + profile.getImageUrl());
        console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.

        var UserNameElement = document.getElementById("username");
        var PWElement = document.getElementById("password");

        UserNameElement.value = profile.getName();
        PWElement.value = profile.getId();

        document.getElementById("myform").submit();
    }

	function signOut() {
		var auth2 = gapi.auth2.getAuthInstance();
		auth2.signOut().then(function() {
			alert("You have been successfully signed out");
    		console.log('user signed out');
			$(".g-signin2").css("display", "block");
			$(".data").css("data", "none");
			location.reload();
	});
}

</script>
    <!-- End Page Content -->

</body>


</html>





