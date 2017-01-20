class RoundsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def create
     @round = current_user.rounds.create(round_params)
       if @round.invalid?
         flash[:error] = 'Round no Created! Form missing a field'
       end
         redirect_to root_path
   end

   def edit
     @round = Round.find(params[:id])
   end

   def update
     @round = Round.find(params[:id])
     @round.update_attributes(round_params)
     if @round.invalid?
       flash[:error] = 'Round not Updated! Form missing a field.'
     end
     redirect_to dashboard_path
   end

   def destroy
     @round = Round.find(params[:id])
     @round.destroy
     redirect_to dashboard_path
   end

  private

  def round_params
    params.require(:round).permit(:course, :score, :greens, :greenstotal, :fwys, :fwystotal, :putts)
  end
end
