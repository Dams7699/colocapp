class ColocationsController < ApplicationController

  def index
    @colocations = Colocation.all
  end

  def show 
    @colocation = Colocation.find(params[:id])
  end
end
