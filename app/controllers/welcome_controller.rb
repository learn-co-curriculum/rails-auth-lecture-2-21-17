class WelcomeController < ApplicationController 

    before_action :authenticated_user!
    before_action :is_admin?, only: [:admin_tools]

    def home 

    end

    def admin_tools 
        if current_user.admin 
            @welcome = 'Hi'
        else 
            redirect_to home_path 
        end 
    end

end