# To deliver this notification:
#
# OfferNotification.with(post: @post).deliver_later(current_user)
# OfferNotification.with(post: @post).deliver(current_user)

class OfferNotification < Noticed::Base
  # Add your delivery methods
  #
  deliver_by :database
  deliver_by :action_cable, channel: "NotificationChannel"#, format: :format_for_action_cable
  # deliver_by :email, mailer: "UserMailer"
  # deliver_by :slack
  # deliver_by :custom, class: "MyDeliveryMethod"

  # Add required params
  #
  # param :post

  # Define helper methods to make rendering easier.
  # def format_for_action_cable
  #   # binding.pry
  # end

  #
  # def message
  #   t(".message")
  # end
  #
  # def url
  #   post_path(params[:post])
  # end
end
