class NineholeroundsController < ApplicationController
  before_action :authenticate_user!, only: %i(new create edit update destroy)

  def new
    @nineholeround = Nineholeround.new
  end

  def show
    @nineholeround = Nineholeround.find_by(id: params[:id])
  end

  def create
    @nineholeround = current_user.nineholerounds.create(round_params_nine)
    if @nineholeround.invalid?
      flash[:error] = '<strong>Could not save</strong>, please fill in all fields.'
    end
    redirect_to nine_holes_path
   end

  def edit
    @nineholeround = Nineholeround.find_by(id: params[:id])
    return render_not_found(:forbidden) if @nineholeround.user != current_user
  end

  def update
    @nineholeround = Nineholeround.find(params[:id])
    @nineholeround.update_attributes(round_params_nine)
    if @nineholeround.invalid?
      flash[:error] = '<strong>Could not save</strong>, please fill in all fields.'
    end
    redirect_to nine_holes_path
  end

  def destroy
    @nineholeround = Nineholeround.find_by(id: params[:id])
    @nineholeround.destroy
    redirect_to nine_holes_path
  end

  private

  def render_not_found(status = :not_found)
    render text: status.to_s.titleize.to_s, status: status
  end

  def round_params_nine
    params.require(:nineholeround).permit(:course, :score, :greenshit, :fwys, :fwystotal, :putts, :birdies, :pars)
  end
end
