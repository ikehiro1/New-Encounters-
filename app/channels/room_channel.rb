class RoomChannel < ApplicationCable::Channel
  def subscribed
     stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    #ActionCable.server.broadcast "room_channel", chat: data["chat"]
    Chat.creat! chat_summray: data["chat"]
  end
end
