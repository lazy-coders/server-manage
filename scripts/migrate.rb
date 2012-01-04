require './core/core.rb'

Core.init nil

Dir['db/migrations/*.rb'].each do |file|
	require file
	puts file
end
