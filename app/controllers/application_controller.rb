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
    current_user.email == 'sargeantm0285@gmail.com'
  end
  
  def get_leaderboard
    @scores2 = User.joins(:scores).where("users.id = scores.user_id").select('users.name as name', 'scores.score as score', 'users.image as image', 'users.email as email').order('score desc').limit(10)
  end
  
end
