class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :authenticated_user!
  helper_method :logged_in? 
  helper_method :is_admin?

  private 

    def current_user 
      # what is a current user?
      # it is a user who can be found by looking up the key of :user_id in the server session. 
      @current_user ||= User.find_by(id: session[:user_id]) # <ActiveRecord 32442jkfklfaffaaf @username="luke" >
    end 

    def logged_in? 
      !!current_user
    end 

    def authenticated_user!
      redirect_to login_path if !logged_in? 
    end

    def is_admin?
      redirect_to home_path if !current_user.admin
    end


end
