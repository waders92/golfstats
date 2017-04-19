class StatsController < ApplicationController
  def index
    @rounds = Round.limit(15).order('created_at DESC')
    @messages = Message.limit(20).order('created_at DESC')
    @comments = Comment.all
  end

  def member_required
    unless user_signed_in?
      redirect_to new_user_session_path
      flash[:error] = 'You must be signed-in!'
    end
  end

  def admin
    unless user_signed_in? && current_user.admin?
      redirect_to root_path
      flash[:error] = 'You do not have access'
    end
    @lessons = Lesson.all
  end
end
