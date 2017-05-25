class NotesController < ApplicationController
  before_action :authenticate_user!

  def create
    @round = Round.find_by_id(params[:round_id])
    @round.notes.create(note_params.merge(user: current_user))
    redirect_to round_path(@round)
  end

  def edit

  end

  private

  def note_params
    params.require(:note).permit(:message)
  end
end
