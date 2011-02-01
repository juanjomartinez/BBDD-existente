class ApplicationController < ActionController::Base
  protect_from_forgery

	protected
		def authorize
			unless Admin.find_by_administradorid(session[:administradorid])
				redirect_to (:controller => 'session', :action => 'index')
			end
		end
end
