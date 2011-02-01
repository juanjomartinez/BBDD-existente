class Empleado < ActiveRecord::Base
	set_primary_key :empleadoid

	has_one :admin, :foreign_key => :empleadoid

	cattr_reader :per_page
	@@per_page = 20
end
