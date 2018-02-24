class LeaderboardController < ApplicationController 
 def index
 	@leaderboard = User.joins("INNER JOIN scores ON scores.userID = users.uid");
  end
end
