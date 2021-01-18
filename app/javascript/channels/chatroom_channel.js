import consumer from "./consumer";

consumer.subscriptions.create("ChatroomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    $("#messages").append(data.body);
    $("#messages-content").scrollTop($("#messages-content")[0].scrollHeight);
  },
});
