require 'active_record'

class Configuration < ActiveRecord::Base
	belogns_to :user
end
