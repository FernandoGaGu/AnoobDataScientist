class Contact < ApplicationRecord
	#attr_accessor :name, :email, :message

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	# Validations
	validates :name, presence: true, length: { maximum: 50 }
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
	validates :message, presence: true, length: { maximum: 500 }
end
