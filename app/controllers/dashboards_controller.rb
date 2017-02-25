class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def index
    @rounds = Round.all
  end

  def show
    @rounds = Round.all
    @monthly_rounds = current_user.rounds.group_by { |i| i.month }
  end
end
