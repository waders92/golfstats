class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def show
    @round = Round.all
  end
end
