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
    # Amount in cents
    @amount = 4000

    customer = Stripe::Customer.create(
      email: current_user.email,
      source: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: @amount,
      description: 'TrakStats Lesson',
      currency: 'usd'
    )
    current_user.update(subscribed: true)
    redirect_to new_lesson_path

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to root_path
  end
end
