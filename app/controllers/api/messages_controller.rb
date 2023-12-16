class Api::MessagesController < ApplicationController
  def index
    random_message = Message.order("RANDOM()").first
    render json: random_message
  end
end
