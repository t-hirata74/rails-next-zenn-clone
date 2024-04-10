class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  include DeviseHackFakeSession # Session回避用の concerns

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      # サインアップ時のストロングパラメーターにnameカラムを追加する
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end
end
