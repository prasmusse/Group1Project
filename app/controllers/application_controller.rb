class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :admin_user

def notAuthorized
  if !current_user
    redirect_to root_path
  end
end

def Authorized
  if current_user
    redirect_to game_url
  end
end


  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def admin_user
   current_user.email == 'dkurschner87@gmail.com'
  end
end
