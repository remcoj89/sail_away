class BoatsController < ApplicationController

  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
    if @boat.save
      redirect_to boats_path(@boat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @boat = boat.find(params[:id])
    @boat.user = current_user
  end

  def update
    @boat = boat.find(params[:id])
    @boat.update(params[:boat])
  end

  def destroy
    @boat = Boat.find(params[:id])
    @boat.destroy
    redirect_to boats_path(@boat.restaurant), status: :see_other
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :description, :address, :price, photos: [])
  end
end
