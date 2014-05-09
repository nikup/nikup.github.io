# encoding: utf-8

require 'erb'
require 'ostruct'
require 'yaml'

File.write "index.html", File.read("templates/indexTemplate.html")

common_index = open('templates/template.erb', 'r') {|f| f.read}

translations = {
	"en" => OpenStruct.new(YAML::load( File.read('translations/en.yaml'))),
	"bg" => OpenStruct.new(YAML::load( File.read('translations/bg.yaml')))
}

translations.each do |lang, info|
	File.write "#{lang}/index.html", ERB.new(common_index).result(info.instance_eval {binding})
end