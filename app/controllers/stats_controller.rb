class StatsController < ApplicationController
  def index
    @rounds = Round.limit(5).order('created_at DESC')
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

  def allrounds
    @rounds = Round.all.order('created_at DESC').all.paginate(page: params[:page], per_page: 5)
  end

  def allnineholes
    @nineholerounds = Nineholeround.all.order('created_at DESC').all.paginate(page: params[:page], per_page: 5)
  end

  def nine_holes
    @yearly_nineholerounds = current_user.nineholerounds.group_by(&:year)
  end

  def admin
    unless user_signed_in? && current_user.admin?
      redirect_to root_path
      flash[:error] = 'You do not have access'
    end
    @lessons = Lesson.all
  end

  def badges; end

  def members
    @user = User.all
  end
end
