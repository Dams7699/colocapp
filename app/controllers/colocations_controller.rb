class ColocationsController < ApplicationController

  def index
    @colocations = Colocation.all
  end
end
