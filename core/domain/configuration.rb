require 'active_record'

class Configuration < ActiveRecord::Base
	belongs_to :user
end
