class MessagesController < ApplicationController
  before_action :logged_in_user
  def create
    message = current_user.messages.build(message_params)
    redirect_to root_path if message.save
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end
