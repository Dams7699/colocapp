class NotificationsController < ApplicationController
  def show
    current_user.notifications.mark_as_read!
    @offers = current_user.offers.order("created_at DESC")
    @owner_offers = current_user.owner_offers.where(status: "En attente..").order("created_at DESC")
  end


end
