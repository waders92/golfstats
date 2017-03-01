class StatsController < ApplicationController
  def index
    # @rounds = Round.order('created_at DESC').limit(15)
    @rounds = Round.all.order('created_at DESC')
    @messages = Message.limit(20).order('created_at DESC')
    @comments = Comment.all
  end

  def premium
    unless user_signed_in?
      redirect_to new_user_session_path
      flash[:error] = 'You must be signed-in!'
    end
  end

  def scoringavg; end

  def greensavg; end

  def fwysavg; end

  def puttsavg; end

  def birdieavg; end

  def paravg; end
end
