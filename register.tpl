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

	<!-- Begin Page Content -->
    <hr><h3 class="w3-block w3-grey w3-center">Basic Todo List, version 1.1</h3><hr>

<body>
<div id="container">
<form id="registerform" action="/register" method="POST">
    <label for="name">User Name:</label>

    <input type="name" id="username" value="" name="username"/>

    <label for="password">Password:</label>

    <input type="password" id="password" value="" name="password"/>

    <label for="csrf_token">Token:</label>

    <input type="checkbox" onclick="myFunction()">

	<label class="showPW" for="showPW">Show Password</label>

    <input type="text" name="csrf_token" value="{{csrf_token}}"/>

    <div class="g-signin2" data-onsuccess="onSignIn">Register With your Google Account</div>

    <div id="lower">

    <input type="submit" name="register" value="Register"/>

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

        var UserNameElement = document.getElementById("username");
        var PWElement = document.getElementById("password");

        UserNameElement.value = profile.getName();
        PWElement.value = profile.getId();

        document.getElementById("registerform").submit();
    }


</script>
    <!-- End Page Content -->

</body>
</html>