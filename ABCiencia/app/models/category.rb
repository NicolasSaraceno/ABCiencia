class Category < ActiveRecord::Base
	has_many :articles

	validates_presence_of :nombre
	validates_uniqueness_of :nombre
	
end
