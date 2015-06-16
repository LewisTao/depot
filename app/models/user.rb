class User < ActiveRecord::Base
	# Validates
	validates_presence_of :name
	validates_uniqueness_of :name
	has_secure_password
end
