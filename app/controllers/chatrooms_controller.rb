# frozen_string_literal: true

class ChatroomsController < ApplicationController
  before_action :logged_in_user
  def index
    @messages = Message.all
  end
end
