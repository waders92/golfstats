class RoundsController < ApplicationController

  before_action :authenticate_user!, only: [:create, :edit, :update]


  def show
    @round= Round.find_by_id(params[:id])
  end

  def create
     @round = current_user.rounds.create(round_params)
       if @round.invalid?
         flash[:error] = '<strong>Could not save</strong>, please fill in all fields.'
       end
         redirect_to dashboard_path
   end

   def edit
     @round = Round.find_by_id(params[:id])
   end

   def update
     @round = Round.find(params[:id])
     @round.update_attributes(round_params)
     if @round.invalid?
       flash[:error] = '<strong>Could not save</strong>, please fill in all fields.'
     end
     redirect_to dashboard_path
   end

  private

  def round_params
    params.require(:round).permit(:course, :score, :greens, :fwys, :fwystotal, :putts)
  end
end
