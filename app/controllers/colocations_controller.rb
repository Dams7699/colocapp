class ColocationsController < ApplicationController

  def index
    @colocations = Colocation.all.sort_by do |colocation|
      goals = colocation.goals & current_user.goals
      -goals.length
    end

    if params[:query].present?
      @colocations = Colocation.near(params[:query], 10)
    else
      @colocations = Colocation.all
    end

  end

  def show
    @colocation = Colocation.find(params[:id])
  end

end
