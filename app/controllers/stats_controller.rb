class StatsController < ApplicationController

  def index
    @rounds = Round.limit(10).order('created_at desc')
    @messages = Message.limit(10).order('created_at desc')
  end

  def show
   @round = Round.find(params[:id])
   @user = User.find(params[:id])
 end

 def about

 end

 def tips

 end

end
