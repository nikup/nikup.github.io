# encoding: utf-8
source = "<!DOCTYPE html>
<html>
<head>
	<title>About me</title>
	<link href=\"style.css\" rel=\"stylesheet\">
</head>
<body>
	<nav id=\"homeNav\">
		<a href=\"en/index.html\">English version</a> |
		<a href=\"bg/index.html\">Българска версия</a>
	</nav>
</body>
</html>"

File.write "index.html", source

title = "About me"
name = "Nikolina Gyurova"
text = "Find me"
navigation = "English version |
			<a href=\"../bg/index.html\">Българска версия</a>"
home = "Home"

title_bg = "За мен"
home_bg = "Начало"
name_bg = "Николина Гюрова"
text_bg = "Къде да ме намерите?"
navigation_bg = "<a href=\"../en/index.html\">English version</a> |
			Българска версия"

common_index = "<!DOCTYPE html>
<html>
<head>
	<title> %s </title>
	<link href=\"../style.css\" rel=\"stylesheet\">
</head>
<body>
	<a href=\"../index.html\"> %s </a>
	<main>
		<h1> %s </h1>
		<p> %s</p>
		<ul>
			<li>
				<a href=\"https://github.com/nikup\">
					<img src=\"../images/github.png\">GitHub
				</a>
			</li>
			<li>
				<a href=\"http://last.fm/user/nikup\">
					<img src=\"../images/lastfm.png\">Last.fm
				</a>
			</li>
			<li>
				<a href=\"http://facebook.com\">
					<img src=\"../images/facebook.png\">Facebook
				</a>
			</li>
			<li>
				<a href=\"http://nikup.deviantart.com/\">
					<img src=\"../images/deviantart.png\">DeviantArt
				</a>
			</li>
			<li>
				<a href=\"http://www.goodreads.com/user/show/3176628-nikup?ref=header\">
					<img src=\"../images/goodreads.png\">Goodreads
				</a>
			</li>
			<li>
				<a href=\"http://outernetnotes.com/\">
					<img src=\"../images/wordpress.png\">Blog & Portfolio
				</a>
			</li>
			<li>
				<a href=\"http://linkedin.com/\">
					<img src=\"../images/linkedin.png\">LinkedIn
				</a>
			</li>
			
		</ul>

		<nav> 
		%s 
		</nav>
	</main>
</body>
</html>"

File.write "en//index.html", sprintf(common_index, title, home, name, text, navigation)
File.write "bg//index.html", sprintf(common_index, title_bg, home_bg, name_bg, text_bg, navigation_bg)