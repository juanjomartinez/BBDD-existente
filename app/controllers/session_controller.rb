class SessionController < ApplicationController
  def index
  end

  def new
  end

  def create
		if admin = Admin.authenticate(params[:user], params[:pass])
			session[:administradorid] = admin.administradorid
			redirect_to admins_path
		else
			redirect_to (:action => 'index')
		end
  end

  def destroy
		session[:administradorid] = nil
		redirect_to (:action => 'index')
  end

end
