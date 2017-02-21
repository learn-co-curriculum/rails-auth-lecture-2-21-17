class SessionsController < ApplicationController 

    def new  # login form 
        @user = User.new 
    end

    def create # handles info from submitted login from 

    end

    def destroy # destroy the current session of the logged in user

    end

end