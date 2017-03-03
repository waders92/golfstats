class ChargesController < ApplicationController
  def new
  end

  def create
      # Amount in cents
      @amount = 5000

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
