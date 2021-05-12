class ColocationsController < ApplicationController

  def index
    @colocations = Colocation.all
  end

  def show
    @colocations = Colocation.find(params[:id])
  end
end
