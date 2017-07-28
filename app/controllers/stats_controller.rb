class StatsController < ApplicationController

  def index
    @rounds = Round.limit(15).order('created_at DESC')
  end

  def lessons
    member_required
  end

  def averages
    member_required
  end

  def allrounds
    @rounds = Round.all.order('created_at DESC')
  end

  def allnineholes
    @nineholerounds = Nineholeround.all.order('created_at DESC')
  end

  def nine_holes
    @monthly_nineholerounds = current_user.nineholerounds.order('created_at DESC').group_by(&:month)
  end

  def admin
    admin_user
    @lessons = Lesson.all
  end

  def badges
    member_required
  end

  def about
  end

  def help
  end

  def members
    admin_user
    @user = User.all
  end

  def notes
    member_required
    @round = Round.all
    @notes = Note.all
  end

  private

  def member_required
    unless user_signed_in?
      redirect_to new_user_session_path
      flash[:error] = 'You must be signed-in!'
    end
  end

  def admin_user
    unless user_signed_in? && current_user.admin?
      redirect_to root_path
      flash[:error] = 'You do not have access'
    end
  end
end
