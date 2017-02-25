class StatsController < ApplicationController
  def index
    # @rounds = Round.order('created_at DESC').limit(15)
    @rounds = Round.all
    @messages = Message.limit(20).order('created_at DESC')
    @comments = Comment.all
    @monthly_rounds = @rounds.group_by { |i| i.month }
  end

  def premium
    if !user_signed_in?
      redirect_to new_user_session_path
      flash[:error] = 'You must be signed-in!'
    end
  end
end
