# encoding: utf-8
File.write "index.html", File.read("templates/indexTemplate.html")

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

common_index = File.read "templates/template.html"

translations = {
	"en" => information,
	"bg" => information_bg
}

translations.each do |lang, info|
	File.write "#{lang}//index.html", common_index % info
end