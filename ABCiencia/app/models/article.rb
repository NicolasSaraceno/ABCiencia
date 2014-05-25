class Article < ActiveRecord::Base
	belongs_to :category

	validates_presence_of :cuerpo
	validates_presence_of :autor
	validates_presence_of :article
	validates_uniqueness_of :article

	after_create :add_resume , :add_superlink

	private

	def add_resume
		self.update! :resume => self.cuerpo.split("\n\n", 2)[0]
	end

	def add_superlink
		self.update! :super_link => self.article.split(' ').join('-')
	end


end
