class StatsController < ApplicationController

  def index
    @rounds = Round.order('created_at DESC').limit(15)
    @messages = Message.limit(15).order('created_at DESC')
    @comments = Comment.all
  end

  def show
  end

  def about
  end

  def tips
  end

  def members
    @users = User.order('created_at ASC')
  end

end
