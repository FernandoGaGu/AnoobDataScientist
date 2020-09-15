class Project < ApplicationRecord
	#attr_accessor :name

	validates :name, presence: true, 
			         uniqueness: { case_sensitive: false }

end
