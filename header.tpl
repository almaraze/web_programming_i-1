<head>

	<!-- Basics -->

	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="google-signin-client_id" content="488698820452-t7kb3gotol12949va445a05nu1uil42s.apps.googleusercontent.com">

    <script src="https://apis.google.com/js/platform.js?onload=onLoad" async defer></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">


	<title>Login</title>

	<!-- CSS -->

	<link rel="stylesheet" type="text/css" href="/static/css/reset.css">
	<link rel="stylesheet" type="text/css" href="/static/css/animate.css">
    <link rel="stylesheet" type="text/css" href="/static/css/styles.css">


</head>

<h3 class="w3-block w3-grey w3-center">Basic Todo List, version 1.1</h3>
<div class="w3-bar w3-black">
  <a href="/login"><button class="w3-bar-item w3-button">Login</button></a>
  <a href="/logout"><button class="w3-bar-item w3-button" onclick="signOut()">Logout</button></a>
  <a href="/new_item"><button class="w3-bar-item w3-button">New item...</button></a>
</div>


<script>
	function signOut() {
        gapi.auth2.getAuthInstance().signOut().then(function() {
            console.log('user signed out')
        })
	}

	function onLoad() {
        gapi.load('auth2', function() {
            gapi.auth2.init();
        });
    }
</script>

