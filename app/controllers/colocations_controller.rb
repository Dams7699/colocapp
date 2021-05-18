class ColocationsController < ApplicationController

  def index
    @colocations = Colocation.all.sort_by do |colocation|
      goals = colocation.goals & current_user.goals
      -goals.length
    end

  end

  def show
    @colocation = Colocation.find(params[:id])
  end

end
