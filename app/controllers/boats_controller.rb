class BoatsController < ApplicationController

  def index
    @boats = Boat.all
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.save
    redirect_to boats_path
  end

  

  private

  def boat_params
    params.require(:boat).permit(:name, :description, :address, :price)
  end
end
