class RoundsController < ApplicationController
  before_action :authenticate_user!, only: %i(new create edit update destroy)

  def new
    @round = Round.new
  end

  def show
    @round = Round.find_by(id: params[:id])
  end

  def create
    @round = current_user.rounds.create(round_params)
    if @round.invalid?
      flash[:error] = '<strong>Could not save</strong>, please fill in all fields.'
    end
    redirect_to eighteen_path
   end

  def edit
    @round = Round.find_by(id: params[:id])
    return render_not_found(:forbidden) if @round.user != current_user
  end

  def update
    @round = Round.find(params[:id])
    @round.update_attributes(round_params)
    if @round.invalid?
      flash[:error] = '<strong>Could not save</strong>, please fill in all fields.'
    end
    redirect_to dashboard_path
  end

  def destroy
    @round = Round.find_by(id: params[:id])
    @round.destroy
    redirect_to eighteen_path
  end

  private

  def render_not_found(status = :not_found)
    render text: status.to_s.titleize.to_s, status: status
  end

  def round_params
    params.require(:round).permit(:course, :score, :greens, :fwys, :fwystotal, :putts, :birdies, :pars, :public)
  end
end
