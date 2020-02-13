class ThreadtitleChannel < ApplicationCable::Channel
 def subscribed
   stream_from "threadtitle_channel_#{params['threadtitle']}"
 end

 def unsubscribed
   # Any cleanup needed when channel is unsubscribed
 end

 def speak(data)   #サーバーサイドのspeakアクションの定義
   Message.create! content: data['message'], user_id: current_user.id, threadtitle_id: params['threadtitle'])
 end
end

