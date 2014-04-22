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
information = {
title: "About me",
name: "Nikolina Gyurova",
text: "Find me",
navigation: "English version |
			<a href=\"../bg/index.html\">Българска версия</a>",
home: "Home"
}

information_bg = {
title: "За мен",
home: "Начало",
name: "Николина Гюрова",
text: "Къде да ме намерите?",
navigation: "<a href=\"../en/index.html\">English version</a> |
			Българска версия"
}

common_index = "<!DOCTYPE html>
<html>
<head>
	<title> %{title} </title>
	<link href=\"../style.css\" rel=\"stylesheet\">
</head>
<body>
	<a href=\"../index.html\"> %{home} </a>
	<main>
		<h1> %{name} </h1>
		<p> %{text}</p>
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
				<a href=\"https://www.facebook.com/whydidyouchangemyefinemail\">
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
				<a href=\"bg.linkedin.com/in/ngyurova/\">
					<img src=\"../images/linkedin.png\">LinkedIn
				</a>
			</li>
			
		</ul>

		<nav> 
		%{navigation}
		</nav>
	</main>
</body>
</html>"

translations = {
	"en" => information,
	"bg" => information_bg
}

translations.each do |lang, info|
	File.write "#{lang}//index.html", common_index % info
end