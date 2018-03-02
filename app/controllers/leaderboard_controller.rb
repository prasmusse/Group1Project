class LeaderboardController < ApplicationController
 before_action :get_users

 def index
 	@scores = User.all

  @scores2 = User.joins(:scores).where("users.id = scores.user_id").select('users.name as name', 'scores.score as score', 'users.image as image')


  end

  def new

    Score.create([{
      score: :data_value,
      user_id: current_user.name

      }])

  end



  def get_users

    @users = User.all.collect{|u| [u.name, u.id]}

  end

  def score_params
    params.require(:score).permit(:score, :user_id)
  end

end
