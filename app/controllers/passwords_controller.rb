class PasswordsController < ApplicationController
    before_action :required_user_logged_in!

    def edit
        
    end

    def update
        if Current.user.update(password_params)
            redirect_to root_path, notice: "Password Updated!"
        else
            redirect_to :edit_password, alert: "Password don't match"
        end 
    end

    private
    def password_params
        params.require(:user).permit(:password, :password_confirmation)
    end
end
