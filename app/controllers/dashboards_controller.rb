class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def show
  	@user_rounds_nine_holes = current_user.nineholerounds.all
  	@user_rounds = current_user.rounds.all
  	@monthly_rounds = current_user.rounds.order('created_at DESC').group_by(&:month)
  	@monthly_nineholerounds = current_user.nineholerounds.order('created_at DESC').group_by(&:month)
  end
end
