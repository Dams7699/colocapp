class OffersController < ApplicationController
  def create
    @colocation = Colocation.find(params[:colocation_id])
    @offer = Offer.new
    @offer.colocation = @colocation
    @offer.user = current_user
    @offer.status = "En attente.."
    if @offer.save
      redirect_to colocation_path(@colocation)
    else
      redirect_to colocation_path(@colocation)
    end
  end

  def accept
    @offer = Offer.find(params[:id])
    @offer.status = "Accepté!"
    @offer.save
    redirect_to notification_path

    OfferNotification.with(
      offer: @offer
    ).deliver(@offer.user)
  end

  def decline
    @offer = Offer.find(params[:id])
    @offer.status = "Décliné!"
    @offer.save
    redirect_to notification_path


    OfferNotification.with(
      offer: @offer
    ).deliver(@offer.user)
  end
end
