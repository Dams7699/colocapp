class NotificationChannel < ApplicationCable::Channel
  def subscribed
    p current_user
    stream_for current_user
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
