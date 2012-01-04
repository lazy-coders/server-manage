require 'active_record'
require 'psych'

class Core
	@@database_conf = nil
	@@configuration = {
		:conf_path => './conf/',
		:environment => 'sqlite',
		:domain_path => './domain/'
	}

	public

		def Core.init (conf)
			Core.update_configuration conf
			Core.setup_environment
			Core.load_domain_classes
		end

	private

		def Core.setup_environment
			@@database_conf = Psych.load_file ( @@configuration[:conf_path] + 'database.yml' )
			ActiveRecord::Base.establish_connection @@database_conf[@@configuration[:environment]]
		end

		def Core.update_configuration (conf = nil)
			conf.each do |key, value|
				@@configuration[key] = value
			end if conf
		end

		def Core.load_domain_classes
			Dir[@@configuration[:domain_path] + "*.rb"].each {|file| require file}
		end
end

#Core.init :conf_path => '../conf/'
