   <!DOCTYPE html>
<html>
  <head>
    <g:layoutHead/>
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
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="#">Menu</a></li>
                <li><a href="#">Rutinas</a></li>
                <li><a href="#">Entrenamientos</a></li>
                <li class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
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
    <div id="header">HEADER</div>
    <g:layoutBody/>
    
</body>
</html>



