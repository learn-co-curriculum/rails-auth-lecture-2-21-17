class SessionsController < ApplicationController 

    def new # login form 
        @user = User.new 
    end

    def create # handles info from submitted login from 
        @user = User.find_by(username: params[:user][:username])
        if @user 
            if @user.authenticate(params[:user][:password])
                session[:user_id] = @user.id
                redirect_to home_path 
            else 
                flash[:error] = "Password is not correct!"
                render 'new'
            end
        else
            flash[:error] = "Username is not correct!"
            render 'new'
        end 
    end

    def destroy # destroy the current session of the logged in user
        session[:user_id] = nil 
        redirect_to login_path 
    end

end