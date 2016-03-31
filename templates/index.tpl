<!DOCTYPE html>
<html lang="en">
<head>
  <title>Check IP</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="/templates/base.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
  <div class="jumbotron">
    <h2>Проверка IP сайта.</h2>
      <form role="form" action="check_hosting" method="POST">
        <div class="form-group">
          <label for="hostname">Введите домен(можно с http://)</label>
          <input type="text" class="form-control input-mir" id="host" name="host" placeholder="http://google.com">
        </div>
        <button type="submit" class="btn btn-default">Чекнуть!</button>
      </form>
  </div>

</div>

</body>
</html>

