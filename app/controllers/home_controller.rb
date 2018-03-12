class HomeController < ApplicationController
  before_action :Authorized
  before_action :get_leaderboard_landing
  
  def show
  end
end
