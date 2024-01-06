class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
    def configure_permitted_parameters
        # ユーザー登録時
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
        # ユーザー編集時
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :profile, :profile_image])
    end
end
