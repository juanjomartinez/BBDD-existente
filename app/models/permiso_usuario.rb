class PermisoUsuario < ActiveRecord::Base
	set_primary_key :permisousuarioid

	belongs_to :admin, :foreign_key => :administradorid
	belongs_to :departamento, :foreign_key => :elementoid

	def self.table_name() 'permisosusuario' end	
end
