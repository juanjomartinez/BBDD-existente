require 'base64'
require 'digest/sha1'

class Admin < ActiveRecord::Base
	set_primary_key :administradorid
	
	attr_accessor :contrasena_pre

	def self.table_name() 'administradores' end
	
  def hex_to_binary(password)
    temp = password.gsub("\s", "");
    ret = []
    (0...temp.size()/2).each{|index| ret[index] = [temp[index*2, 2]].pack("H2")}
    return ret
	end

	def hashear_pass(password)
		self.contrasena = Base64.encode64(hex_to_binary(Digest::SHA1.hexdigest(password)).join)
	end

end
