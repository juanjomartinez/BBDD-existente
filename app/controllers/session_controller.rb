class SessionController < ApplicationController

	skip_before_filter :authorize, :only => [:index, :create]

  def index
  end

  def new
  end

  def create
		if admin = Admin.authenticate(params[:user], params[:pass])
			session[:administradorid] = admin.administradorid
			# redirect_to departamento_path(admin.permiso_usuario.departamento)
			redirect_to departamentos_path
		else
			redirect_to (:action => 'index')
		end
  end

  def destroy
		session[:administradorid] = nil
		redirect_to (:action => 'index')
  end

end
