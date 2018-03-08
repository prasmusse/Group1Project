class LeaderboardController < ApplicationController
 before_action :get_users

 def index


  @scores = User.joins(:scores).where("users.id = scores.user_id").select('users.name as name', 'scores.score as score', 'users.image as image', 'users.email as email')


  end

  def new
    @score = Score.new
  end

  def create
    @score = Score.new(score_params[:scores_data])

    respond_to do |format|
      if @score.save

        format.json

      else

        format.json 

      end
    end
  end

  def get_users

    @users = User.all.collect{|u| [u.name, u.id]}

  end

  def score_params
    params.permit(:score, :user_id)
  end


end
