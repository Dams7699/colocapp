class NotificationsController < ApplicationController
  def show
    @offers = current_user.offers.where(status: "En attente")
  end
end
