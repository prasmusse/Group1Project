class LeaderboardController < ApplicationController 
 def index
 	@leaderboard = Score.all;
  end
end
