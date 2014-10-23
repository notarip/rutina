<!DOCTYPE html>
<html lang="en">
  <head>
    
    <meta name="layout" content="header"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Rutina - Login</title>
    <link href="../css/boostrap/bootstrap.min.css" rel="stylesheet">
    <link href="../css/boostrap/bootstrap-theme.min.css" rel="stylesheet">
    <link href="../css/login.css" rel="stylesheet">
    <link href="theme.css" rel="stylesheet">
    <script src="../js/boostrap/ie-emulation-modes-warning.js"></script>
        <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="../js/boostrap/bootstrap.min.js"></script>
    <script src="../js/boostrap/docs.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../js/boostrap/ie10-viewport-bug-workaround.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body role="document">

    <div class="container theme-showcase" role="main">
      <div class="page-header">
        <h1>Login</h1>
      </div>
	<g:form method="post" >
      <div class="well carousel-search hidden-sm">
        <select name="user" id="selectUser">
            <option value="pablo">Pablo - User</option>
            <option value="charles">Charles - Coach</option>
        </select>
          <div class="btn-group">
            <g:actionSubmit class="btn btn-lg btn-primary" action="login" value="${message(code: 'default.button.login.label', default: 'Login')}" />

          </div>
      </div>
    </g:form>
      
    </div>
  </body>
</html>


