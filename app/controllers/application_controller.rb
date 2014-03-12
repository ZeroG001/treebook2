class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


# These next lines allow for the first_name, last_name, and profile_name fields
# to be populated in the database. Before I was having an issue where the username and
# password would not show up. Looked under strong parameters under the Devise documentation.
# The documentation told me what to do,

	  before_filter :configure_permitted_parameters, if: :devise_controller?

	  protected

	  def configure_permitted_parameters
	  	devise_parameter_sanitizer.for(:sign_up) << :first_name
	  	devise_parameter_sanitizer.for(:sign_up) << :last_name
	  	devise_parameter_sanitizer.for(:sign_up) << :profile_name
	  	
	  
	  end
	end
#end
