class ColocationsController < ApplicationController

  def index
    if params[:query].present? && params[:price].present?
      colocations = Colocation.near(params[:query], 10)
      colocations = Colocation.where("price <= ?", params[:price])

    elsif params[:query].present?
      colocations = Colocation.near(params[:query], 10)
    elsif params[:price].present?
      colocations = Colocation.where("price <= ?", params[:price])
    else
      colocations = Colocation.all
    end

    @colocations = colocations.sort_by do |colocation|
      goals = colocation.goals & current_user.goals
      -goals.length
    end
  end

  def show
    @colocation = Colocation.find(params[:id])
  end

end
