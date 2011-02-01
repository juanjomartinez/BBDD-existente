class Empleado < ActiveRecord::Base
	set_primary_key :empleadoid

	belongs_to :admin, :foreign_key => :administradorid

	cattr_reader :per_page
	@@per_page = 20
end
