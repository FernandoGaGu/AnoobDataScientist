class Contact < ApplicationRecord
	attr_accessor :name, :email, :message


	# Validations
	validates :name, presence: true
	validates :email, presence: true
	validates :message, presence: true
end
