class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  # private

  # def basic_auth
  #   authenticate_or_request_with_http_basic do |username, password|
  #     username == 'teamd' && password == 'mercari'
  #   end
  # end

  protected

  def configure_permitted_parameters
    added_attrs = [ :f_name,
                    :l_name,
                    :f_name_kana,
                    :l_name_kana,
                    :gender,
                    :birth_yyyy_id,
                    :birth_mm_id,
                    :birth_dd_id,
                  ]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
  end
end