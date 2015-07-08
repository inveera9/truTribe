class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

<<<<<<< HEAD
    def configure_permitted_parameters
=======
	def configure_permitted_parameters
>>>>>>> e977655d6a4fe39b980814bcec520058317f8029
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name
  	end

  	def invite_user
  	@user = User.invite!(:email => params[:user][:email], :name => params[:user][:name])
  	render :json => @user
<<<<<<< HEAD
    end
=======
	end
>>>>>>> e977655d6a4fe39b980814bcec520058317f8029


end
