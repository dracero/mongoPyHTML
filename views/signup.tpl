<!DOCTYPE html>

<html>
  <head>
    <title>Iniciar Sesión</title>

    <link rel="stylesheet" type="text/css" href="static/css/style.css">
    <link href="static/img/uba.jpg" rel="shortcut icon">

  </head>

  <body>
    Ya es Usuario? <a href="/login">Iniciar Cesión</a> | <a href="/">Home</a><p>
    <h2>Iniciar</h2>
    <form method="post">
      <table>
        <tr>
          <td class="label">
            Usuario
          </td>
          <td>
            <input type="text" name="username" value="{{username}}">
          </td>
          <td class="error">
	    {{username_error}}

          </td>
        </tr>

        <tr>
          <td class="label">
            Contraseña
          </td>
          <td>
            <input type="password" name="password" value="">
          </td>
          <td class="error">
	    {{password_error}}

          </td>
        </tr>

        <tr>
          <td class="label">
            Verificar contraseña
          </td>
          <td>
            <input type="password" name="verify" value="">
          </td>
          <td class="error">
	    {{verify_error}}

          </td>
        </tr>

        <tr>
          <td class="label">
            Email (opcional)
          </td>
          <td>
            <input type="text" name="email" value="{{email}}">
          </td>
          <td class="error">
	    {{email_error}}

          </td>
        </tr>
      </table>

      <input type="submit" value="Enviar información">
    </form>
  </body>

</html>
