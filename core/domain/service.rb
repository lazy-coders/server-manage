require 'active_record'

class Service < ActiveRecord::Base
	has_many :configurations
end
