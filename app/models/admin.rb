require 'base64'
require 'digest/sha1'

class Admin < ActiveRecord::Base
	set_primary_key :administradorid

	belongs_to :empleado, :foreign_key => :empleadoid
	has_one :permiso_usuario, :foreign_key => :administradorid

	attr_accessor :contrasena_pre

	def self.table_name() 'administradores' end

	def Admin.authenticate(user, pass)
		if user = find_by_nombreusuario(user)
			if user.hash31 == 'Y'
				if user.contrasena == user.hashed_pass(pass)
					user
				end
			else
				if user.contrasena == pass
					user
				end
			end
		end
	end
	
  def hex_to_binary(password)
    temp = password.gsub("\s", "");
    ret = []
    (0...temp.size()/2).each{|index| ret[index] = [temp[index*2, 2]].pack("H2")}
    return ret
	end

	def hashed_pass(password)
		Base64.encode64(hex_to_binary(Digest::SHA1.hexdigest(password)).join).gsub("\n","")
	end

	def hashear_pass(password)
		self.contrasena = hashed_pass(password) 
	end

end
