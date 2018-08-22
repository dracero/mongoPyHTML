<!DOCTYPE html>

<html>
  <head>
    <title>Buscador</title>
    <link rel="stylesheet" type="text/css" href="static/css/style.css">
    <link href="static/img/uba.jpg" rel="shortcut icon">
  </head>

  <body>
     {{username}}
     | <a href="/logout">Salir </a> |
    <div>
    <h1>Buscador</h1>
    <img src="/static/img/uba.jpg" ALT="example annotation" WIDTH=100 HEIGHT=100>
    </div>

    <form method="post">
      <table>
        <tr>
          <td class="label">
            Ingrese Email
          </td>
          <td>
            <input type="text" name="email_bus" value="{{email_bus}}">
          </td>
          <td class="error">
          </td>
        </tr>
      </table>

      <input type="submit" >
    </form>

    Email a Buscar:{{email_buscado}}==>
    {{resultado}}


  </body>

</html>
