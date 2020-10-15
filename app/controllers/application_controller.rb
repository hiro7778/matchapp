class ApplicationController < ActionController::Base
  before_action  :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :gender, :age, :area_id, :birth_date])
  end
end
