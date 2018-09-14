<!DOCTYPE html>
<html>
<head>
<title>CETEC</title>
<link rel="stylesheet" type="text/css" href="static/css/style.css">
<link href="static/img/uba.jpg" rel="shortcut icon">
</head>
<body>

%if (username != None):
Bienvenido {{username}}        <a href="/logout">Cerrar session</a> | <a href="/operaciones">Operaciones</a><p>
<img src="/static/img/CETEC.jpg" ALT="example annotation" WIDTH=1000 HEIGHT=500>
%else:
<img src="/static/img/CETEC.jpg" ALT="example annotation" WIDTH=1000 HEIGHT=500>
<a href="/operaciones"><p>Operaciones</a>
%end



%end

</body>
</html>
