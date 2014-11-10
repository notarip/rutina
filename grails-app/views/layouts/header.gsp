   <!DOCTYPE html>
<html>
  <head>
    <g:layoutHead/>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">


    <link href="${resource(dir: 'css/boostrap', file: 'bootstrap-select.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css/boostrap', file: 'bootstrap.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css/boostrap', file: 'bootstrap-theme.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css', file: 'style.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css/boostrap', file: 'theme.css')}" rel="stylesheet">
    <link href="${resource(dir: 'js/jquery-ui-1.11.2.custom', file: 'jquery-ui.min.css')}" rel="stylesheet">

    <script src="${resource(dir: 'js/boostrap', file: 'ie-emulation-modes-warning.js')}"></script>
    <!-- script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script -->
    <script src="${resource(dir: 'jquery-ui-1.11.2.custom/external/jquery', file: 'jquery.js')}"></script>
    <script src="${resource(dir: 'js/jquery-ui-1.11.2.custom', file: 'jquery-ui.js')}"></script>

    <script src="${resource(dir: 'js/boostrap', file: 'bootstrap.min.js')}"></script>
    <script src="${resource(dir: 'js/boostrap', file: 'docs.min.js')}"></script>
    <script src="${resource(dir: 'js/boostrap', file: 'bootstrap-select.js')}"></script>
    <script src="${resource(dir: 'js', file: 'rutina.js')}"></script>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="${resource(dir: 'js/boostrap', file: 'ie10-viewport-bug-workaround.js')}"></script>




    <style>
      #header {background-color:#ffe0e0;text-align: center;}
      #footer {background-color:#e0e0ff;text-align: center;}
    </style>
    <title><g:layoutTitle default="Rutina"/></title>
        <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/rutina/">Rutina</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Menu <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="/rutina/rutina">Rutinas</a></li>
                <li><a href="/rutina/entrenamiento">Entrenamientos</a></li>
                <li class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <!--li><a href="#">Separated link</a></li-->
              </ul>
            </li>
            <g:if test="${session["user"] && !session["user"].isEmpty()}">
              <li><a href="/rutina/login/logout">Hola ${session["user"]}, Logout</a></li>
            </g:if>
            <g:else>
               <li><a href="/rutina/login/index">Login</a></li>
            </g:else>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>
  </head>

<body>
    <br>
    <g:layoutBody/>

</body>
</html>
