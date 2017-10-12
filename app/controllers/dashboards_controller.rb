class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def show
  	@monthly_rounds = current_user.rounds.order('created_at DESC').group_by(&:month)
  	@monthly_nineholerounds = current_user.nineholerounds.order('created_at DESC').group_by(&:month)
  end
end
