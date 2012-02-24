require './core/core.rb'

Core.init nil

Dir['./db/migrations/*.rb'].each do |file|
	require File.absolute_path(file)
	puts File.absolute_path file
	class_name = /[a-zA-Z]+[a-zA-Z_0-9]*/.match File.basename(file, '.rb')
	class_name = class_name[0].split('_').collect { |str| str.capitalize }.join
	puts class_name
	class_instance = eval(class_name).new
	class_instance.up
end
