<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Rutina - Login</title>
    <meta name="layout" content="header"/>

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
            <option value="pepe">pepe - Coach</option>
        </select>
          <div class="btn-group">
            <g:actionSubmit class="btn btn-lg btn-primary" action="login" value="${message(code: 'default.button.login.label', default: 'Login')}" />

          </div>
      </div>
    </g:form>
      
    </div>
  </body>
</html>


