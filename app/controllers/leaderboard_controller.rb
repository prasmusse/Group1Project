class LeaderboardController < ApplicationController
 before_action :get_users

 def index
 	

  @scores = User.joins(:scores).where("users.id = scores.user_id").select('users.name as name', 'scores.score as score', 'users.image as image', 'users.email as email')


  end



  def get_users

    @users = User.all.collect{|u| [u.name, u.id]}

  end



end
