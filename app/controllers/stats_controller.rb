class StatsController < ApplicationController

  def index
    @rounds = Round.order('created_at DESC').limit(15)
    @messages = Message.limit(15).order('created_at DESC')
    @comments = Comment.all
  end

  def about
  end

  def tips
  end

  def scoringavg
  end

  def greensavg
  end

  def fwysavg
  end

  def birdieavg
  end

  def paravg
  end

  def puttsavg
  end


end
