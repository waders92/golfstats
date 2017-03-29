class LessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cache_headers

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

  def edit
    @lesson = Lesson.find_by(id: params[:id])
  end

  def update
    @lesson = Lesson.find_by(id: params[:id])
    @lesson.update_attributes(lesson_params)
    redirect_to admin_path
  end

  def create
    @lesson = current_user.lessons.create(lesson_params)
    if @lesson.valid?
      current_user.update(subscribed: false)
      redirect_to lessons_path
      flash[:error] = 'Thanks for submitting your lesson, I will check it out shortly!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def lesson_params
    params.require(:lesson).permit(:video, :caption, :advice)
  end
end
