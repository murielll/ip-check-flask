<!DOCTYPE html>
<html lang="en">
<head>
  <title>Check IP</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="catamba_hosting/templates/base.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
  <div class="jumbotron">
        <h1>Сайт<br><strong><span class="yellow">{{ host }}</span></strong><br>имеет IP:<br><span class="yellow">{{ ip }}</span></h1>
        {{ on_host }}
        <p><a class="btn btn-lg btn-success" href="check_hosting" role="button">Еще разок!</a></p>
  </div>

</div>

</body>
</html>

