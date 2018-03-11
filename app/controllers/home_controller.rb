class HomeController < ApplicationController
  before_action :Authorized
  before_action :get_leaderboard
  
  def show
  end
end
