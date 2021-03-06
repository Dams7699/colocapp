class ColocationsController < ApplicationController

  def index
    if params[:query].present? && params[:price].present?
      colocations = Colocation.near(params[:query], 10).where("price <= ?", params[:price])

    elsif params[:query].present?
      colocations = Colocation.near(params[:query], 10)
    elsif params[:price].present?
      colocations = Colocation.where("price <= ?", params[:price])
    else
      colocations = Colocation.all
    end

    session[:search_query] = request.url

    @colocations = colocations.sort_by do |colocation|
      goals = colocation.goals & current_user.goals
      -goals.length
    end
  end

  def show
    @colocation = Colocation.find(params[:id])
    @offer = Offer.find_by(user: current_user, colocation: @colocation)
    session[:return_to] = request.url
  end

end
