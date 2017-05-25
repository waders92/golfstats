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
    round = Round.find_by_id(params[:round_id])
    note = round.notes.find(params[:id])
    note.update_attributes(note_params)
    redirect_to round_path(round)
  end

  private

  def render_not_found(status = :not_found)
    render text: status.to_s.titleize.to_s, status: status
  end

  def note_params
    params.require(:note).permit(:message)
  end
end
