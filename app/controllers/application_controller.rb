	class ApplicationController < ActionController::Base
			before_action :configure_permitted_parameters, if: :devise_controller?
			before_action :set_locale
		protected
		def configure_permitted_parameters

			attributes = [:first_name, :last_name, :email, :password, :birth_date, :phone, :city,:username, :avatar, :admin]


			devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
			devise_parameter_sanitizer.permit(:account_update, keys: attributes)
		end
		def after_sign_in_path_for(resource)
			root_path
		
		end
		include HttpAcceptLanguage::AutoLocale
		  protect_from_forgery with: :exception

  


  private


  def set_locale

    I18n.locale = "fr"

  end

end
	


