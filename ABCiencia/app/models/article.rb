class Article < ActiveRecord::Base
	belongs_to :category

	validates_presence_of :cuerpo
	validates_presence_of :autor
	validates_presence_of :article
	validates_uniqueness_of :article
	
end
