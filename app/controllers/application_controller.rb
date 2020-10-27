class ApplicationController < ActionController::Base
  before_action  :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :age, :area_id, :birth_date, gender:[] ])
  end

  # def after_sign_in_path_for(resouces)
  #   profile_path(resouces)
  # end
end
