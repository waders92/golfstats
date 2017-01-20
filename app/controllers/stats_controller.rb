class StatsController < ApplicationController

  def index
    @rounds = Round.all
  end

  def show
   @round = Round.find(params[:id])
   @user = User.find(params[:id])
 end

end
