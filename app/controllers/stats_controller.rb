class StatsController < ApplicationController

  def index
    @rounds = Round.order('created_at DESC').limit(15)
    @messages = Message.limit(15).order('created_at DESC')
    @comments = Comment.all
  end

  def show
   @round = Round.find(params[:id])
   @user = User.find(params[:id])
  end

  def about
  end

  def tips
  end

  def members
   @users = User.all
  end

end
