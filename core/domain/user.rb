class User < ActiveRecord::Base
	has_many :configurations
end
