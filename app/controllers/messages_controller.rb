class MessagesController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def new
    @message = Message.new
  end

  def create
    @message = current_user.messages.build(message_params)
    if @message.save
      redirect_to root_path
  end
end

  private

  def message_params
    params.require(:message).permit(:message)
  end

end
