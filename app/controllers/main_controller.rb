class MainController < ApplicationController
    def index
        # flash.now[:notice] = "Hello I am notice"
        # flash.now[:alert] = "Hello I am alert"
        if session[:user_id]
            @user = User.find_by(id: session[:user_id])
        end
    end
    
end