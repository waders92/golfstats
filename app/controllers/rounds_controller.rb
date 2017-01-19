class RoundsController < ApplicationController

  def new
    @round = Round.new
  end

  def create
    @round = Round.create(round_params)
    redirect_to root_path
  end

  private

  def round_params
    params.require(:round).permit(:course, :score, :greenshit, :greenstotal, :fwyhit, :fwytotal, :putts)
  end



end
