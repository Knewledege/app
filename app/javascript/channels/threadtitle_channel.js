import consumer from './consumer'

$(function() {
  const chatChannel = consumer.subscriptions.create({ channel: 'ThreadtitleChannel', threadtitle: $('#messages').data('threadtitle_id') }, {
    connected() {
      // Called when the subscription is ready for use on the server
    },

    disconnected() {
      // Called when the subscription has been terminated by the server
    },

    received: function(data) {
      return $('#messages').append(data['message']);
    },

    speak: function(message) {
      return this.perform('speak', {
        message: message
      });
    }
  });

// data-behaviorがthreadtitle_speakerである場所でkeypressすると...
  $(document).on('keypress', '[data-behavior~=threadtitle_speaker]', function(event) {
    if (event.keyCode === 13) {
      chatChannel.speak(event.target.value);
      event.target.value = '';
      return event.preventDefault();
    }
  });
});