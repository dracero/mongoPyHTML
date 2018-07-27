<!DOCTYPE html>
<html>
<head>
<title>Blog!</title>
<link rel="stylesheet" type="text/css" href="static/css/style.css">
<link href="static/img/uba.jpg" rel="shortcut icon">
</head>
<body>

%if (username != None):
Welcome {{username}}        <a href="/logout">Logout</a> | <a href="/newpost">New Post</a><p>
%else:
<a href="/welcome">home</a><p>
%end
<div>
<h1>Server CEAD</h1>
<img src="/static/img/uba.jpg" ALT="example annotation" WIDTH=100 HEIGHT=100>
</div>
%for post in myposts:
<h2><a href="/post/{{post['permalink']}}">{{post['title']}}</a></h2>
Posted {{post['post_date']}} <i>By {{post['author']}}</i><br>
Comments:
%if ('comments' in post):
%numComments = len(post['comments'])
%else:
%numComments = 0
%end
<a href="/post/{{post['permalink']}}">{{numComments}}</a>
<hr>
{{!post['body']}}
<p>
<p>
<em>Filed Under</em>:
%if ('tags' in post):
%for tag in post['tags'][0:1]:
<a href="/tag/{{tag}}">{{tag}}</a>
%for tag in post['tags'][1:]:
, <a href="/tag/{{tag}}">{{tag}}</a>
%end
%end

<p>
%end
</body>
</html>
