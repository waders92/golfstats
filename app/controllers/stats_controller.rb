class StatsController < ApplicationController
  def index
    @rounds = Round.order('created_at DESC').limit(15)
    @messages = Message.limit(20).order('created_at DESC')
    @comments = Comment.all
  end

  def scoringavg
    @rounds = Round.order(scoring_rank: :asc)
  end

end
