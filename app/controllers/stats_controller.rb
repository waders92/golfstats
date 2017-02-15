class StatsController < ApplicationController
  def index
    @rounds = Round.order('created_at DESC').limit(15)
    @messages = Message.limit(20).order('created_at DESC')
    @comments = Comment.all
  end

  def scoringavg
    @rounds = Round.order(scoring_rank: :asc)
  end

  def premium
    if !user_signed_in?
      redirect_to new_user_session_path
      flash[:error] = 'You must be signed-in!'
    end
  end
end
