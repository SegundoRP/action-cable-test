class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    @chatroom = Chatroom.find(params[:id])
    stream_for @chatroom


    # stream_from "everyone"
    # esto es para transmitir en todo slos channels
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
