class LeaderboardController < ApplicationController
  before_action :notAuthorized
  before_action :get_users
  before_action :get_leaderboard
  
 def index

  end



  def get_users

    @users = User.all.collect{|u| [u.name, u.id]}

  end



end
