class NotesController < ApplicationController
  before_action :authenticate_user!

  def create
    @round = Round.find_by_id(params[:round_id])
    @round.notes.create(note_params.merge(user: current_user))
    redirect_to round_path(@round)
  end

  def edit
    round = Round.find_by_id(params[:round_id])
    @note = round.notes.find(params[:id])
  end

  def update
    @round = Round.find_by_id(params[:id])
    @note = Note.find_by_id(params[:id])
    @note.update_attributes(note_params)
    flash[:error] = 'Note edit was saved!'
    redirect_to dashboard_path(anchor: 'redirect')
    # redirect_to proc { round_url(@round) }
    # redirect_to round_path(@round)
    # redirect_to round_url(:controller => :rounds, :action => :show)
  end

  def destroy
    @round = Round.find_by_id(params[:id])
    @note = Note.find_by_id(params[:id])
    @note.destroy
    redirect_to dashboard_path(anchor: 'redirect') 
  end

  private

  def render_not_found(status = :not_found)
    render text: status.to_s.titleize.to_s, status: status
  end

  def note_params
    params.require(:note).permit(:message)
  end
end
