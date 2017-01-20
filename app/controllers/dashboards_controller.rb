class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def show
     @round = Round.find_by_id(params[:id])
   end




end
