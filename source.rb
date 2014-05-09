# encoding: utf-8

require 'erb'
require 'ostruct'

File.write "index.html", File.read("templates/indexTemplate.html")

information = OpenStruct.new({
title: "About me",
name: "Nikolina Gyurova",
text: "Find me",
navigation: "English version |
			<a href=\"../bg/index.html\">Българска версия</a>",
home: "Home"
})

information_bg = OpenStruct.new({
title: "За мен",
home: "Начало",
name: "Николина Гюрова",
text: "Къде да ме намерите?",
navigation: "<a href=\"../en/index.html\">English version</a> | 
			Българска версия"
})

common_index = open('templates/template.erb', 'r') {|f| f.read}

translations = {
	"en" => information,
	"bg" => information_bg
}

translations.each do |lang, info|
	File.write "#{lang}/index.html", ERB.new(common_index).result(info.instance_eval {binding})
end