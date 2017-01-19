class RoundsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def create
     @round = current_user.rounds.create(round_params)
       if @round.invalid?
         flash[:error] = 'Form can\'t be blank'
       end
         redirect_to root_path
   end

  private

  def round_params
    params.require(:round).permit(:course, :score, :greens, :greenstotal, :fwys, :fwystotal, :putts)
  end
end
