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

		<input type="name" value="" id="username" name="username">

		<label for="password">Password:</label>

		<p><a href="#">Forgot your password?</a>

		<input type="password" value="" name="password" id="password">

		<label for="csrf_token">Token:</label>

		<input type="checkbox" onclick="myFunction()">

		<label class="showPW" for="showPW">Show Password</label>

        <input type="text" name="csrf_token" value="{{csrf_token}}"/>

		<div id="lower">

		<input type="checkbox"><label class="check" for="checkbox">Keep me logged in</label>

		<input type="submit" name="login" value="Log In"/>

		<input type="button" onclick="location.href='/register';" value="Register"/>

        </div>

        </form>
	</div>

	<div class="g-signin2" data-onsuccess="onSignIn"></div>

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

        var UserNameElement = document.getElementById("username");
        var PWElement = document.getElementById("password");

        UserNameElement.value = profile.getName();
        PWElement.value = profile.getId();

        document.getElementById("myform").submit();
    }


</script>
    <!-- End Page Content -->

</body>


</html>





