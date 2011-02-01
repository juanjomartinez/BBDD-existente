class Departamento < ActiveRecord::Base
	set_primary_key :departamentoid

	has_many :permiso_usuario, :foreign_key => :elementoid
end
