import consumer from "./consumer"

const chatChannel = consumer.subscriptions.create("RoomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
  },
  received: function(data) {
    alert(data["chat"]);
  },

  speak: function(chat) {
    return this.perform('speak', {
      chat: chat
    });
  }
});
(document).on('keypress', '[data-behavior~=room_speaker]', function(event) {
  if (event.keyCode === 13) {
    chatChannel.speak(event.target.value);
    event.target.value = '';
    return event.preventDefault();
  }
});

received: function(data) {
  return $("#chat").append(data["chat"]);
}