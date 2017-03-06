class StatsController < ApplicationController
  def index
    # @rounds = Round.order('created_at DESC').limit(15)
    @rounds = Round.all.order('created_at DESC')
    @messages = Message.limit(20).order('created_at DESC')
    @comments = Comment.all
  end

  def member_required
    unless user_signed_in?
      redirect_to new_user_session_path
      flash[:error] = 'You must be signed-in!'
    end
  end

  def lessons
    member_required
  end

  def scoringavg
    member_required
  end

  def greensavg
    member_required
  end

  def fwysavg
    member_required
  end

  def puttsavg
    member_required
  end

  def birdieavg
    member_required
  end

  def paravg
    member_required
  end

  def admin
    unless user_signed_in? && current_user.admin?
      redirect_to root_path
      flash[:error] = 'You do not have access'
    end
    @lessons = Lesson.all
  end
end
