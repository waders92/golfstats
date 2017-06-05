class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def index
    @rounds = Round.all
  end

  def show
    @monthly_rounds = current_user.rounds.order('created_at DESC').group_by(&:month)
    # @yearly_rounds = current_user.rounds.order('created_at DESC').group_by(&:year)
  end
end
