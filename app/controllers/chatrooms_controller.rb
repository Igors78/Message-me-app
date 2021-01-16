# frozen_string_literal: true

class ChatroomsController < ApplicationController
  def index
    @messages = Message.all
  end
end
