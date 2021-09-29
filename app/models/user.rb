
class User < ApplicationRecord
	has_secure_password
	has_secure_token :api_key
	validates :email, uniqueness: { case_sensitive: false }, presence: true
	validates :password, confirmation: { case_sensitive: true } 
end