class LeaderboardController < ApplicationController
  before_action :notAuthorized
  before_action :get_users

 def index
 	@scores = User.all

  @scores2 = User.joins(:scores).where("users.id = scores.user_id").select('users.name as name', 'scores.score as score', 'users.image as image', 'users.email as email').limit(10).order('score').reverse


  end



  def get_users

    @users = User.all.collect{|u| [u.name, u.id]}

  end



end
