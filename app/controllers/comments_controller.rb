class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def show
    @round = Round.find_by_id(params[:id])
  end

  def create
    @round = Round.find_by_id(params[:round_id])
    @round.comments.create(comment_params.merge(user: current_user))
    redirect_to round_path(@round)
  end

  private

  def comment_params
    params.require(:comment).permit(:message)
  end
end
