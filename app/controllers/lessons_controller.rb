class LessonsController < ApplicationController
  before_action :authenticate_user!

  def member_required
    unless current_user.subscribed?
      redirect_to root_path
      flash[:error] = 'You must be a member to view premium content!'
    end
  end

  def new; end

  def thanks; end

  def create
    # Amount in cents
    @amount = 500

    customer = Stripe::Customer.create(
      email: current_user.email,
      source: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: @amount,
      description: 'TrakStats Premium Membership',
      currency: 'usd'
    )
    current_user.update(subscribed: true)
    redirect_to thanks_path

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to root_path
  end
end
