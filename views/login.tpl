<!DOCTYPE html>

<html>
  <head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="static/css/style.css">
    <link href="static/img/uba.jpg" rel="shortcut icon">

  </head>

  <body>
    <h2>Login</h2>
    <form method="post">
      <table>
        <tr>
          <td class="label">
            Username
          </td>
          <td>
            <input type="text" name="username" value="{{username}}">
          </td>
          <td class="error">
          </td>
        </tr>

        <tr>
          <td class="label">
            Password
          </td>
          <td>
            <input type="password" name="password" value="">
          </td>
          <td class="error">
	    {{login_error}}

          </td>
        </tr>

      </table>

      <input type="submit">
    </form>
  </body>

</html>
