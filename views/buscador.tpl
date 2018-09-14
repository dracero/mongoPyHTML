<!DOCTYPE html>

<html>
  <head>
    <title>Buscador</title>
    <link rel="stylesheet" type="text/css" href="static/css/style.css">
    <link href="static/img/uba.jpg" rel="shortcut icon">
  </head>

  <body>
     {{username}}
     | <a href="/logout">Salir </a> | <a href="/">Home </a>

    <h1>Buscador</h1>
    <img src="/static/img/lupa.png" ALT="example annotation" WIDTH=100 HEIGHT=100>
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
        </tr>
      </table>


    </form>




      %if (resultado == 0):
            No se encuentra
      %end

      %if (resultado != 0):
        %if(resultado != 3):
        <div class:"normal" summary="div normal" >
        <table class="normal" summary="Tabla genérica">
          <tr>
          <td><strong>Email</strong></td>
          <td><strong>Parcial1</strong></td>
          <td><strong>Parcial2</strong></td>
          <td><strong>Parcial3</strong></td>
          <td><strong>RecParcial1</strong></td>
          <td><strong>RecParcial2</strong></td>
          <td><strong>RecParcial3</strong></td>
          <td><strong>2RecParcial1</strong></td>
          <td><strong>2RecParcial2</strong></td>
          </tr>

          <tr>
          <td>{{resultado[0]}}</td>
          <td>{{resultado[1]}}</td>
          <td>{{resultado[2]}}</td>
          <td>{{resultado[3]}}</td>
          <td>{{resultado[4]}}</td>
          <td>{{resultado[5]}}</td>
          <td>{{resultado[6]}}</td>
          <td>{{resultado[7]}}</td>
          <td>{{resultado[8]}}</td>
          </tr>
        </table>
        %end
      %end
      </div>

  </body>

</html>
