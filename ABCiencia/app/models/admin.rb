class Admin < ActiveRecord::Base
	validates_presence_of :password
	validates_length_of :password, :minimum => 6, :too_short => "Minimo 6 caracteres"
	validates_presence_of :nombre 
	validate :admin_should_be_unique
	before_save :encrypt_password

	def login (password, nombre)
		if self.nombre == nombre and self.password == password 
			self.login = true
		end
	end
	
	def check_login
		self.Login
	end

	private

	def encrypt_password
		self.password = BCrypt::Password.create(self.password) 
	end

	def admin_should_be_unique
			 if ! Admin.last.nil? 
				errors.add("Admin already exist")
			end
	end

end
