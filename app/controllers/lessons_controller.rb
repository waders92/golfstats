class LessonsController < ApplicationController
  before_action :authenticate_user!

  def payment_required
    unless current_user.subscribed?
      redirect_to lessons_path
      flash[:error] = 'You must complete the checkout process to submit an online lesson!'
    end
  end

  def new
    payment_required
    @lesson = Lesson.new
  end

  def create
    @lesson = current_user.lessons.create(lesson_params)
    if @lesson.valid?
    current_user.update(subscribed: false)
    redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def lesson_params
    params.require(:lesson).permit(:picture, :caption)
  end

end
