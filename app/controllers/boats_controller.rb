class BoatsController < ApplicationController
  def index
    @boats = Boat.geocoded
  end

  def show
    @boat = Boat.find(params[:id])
    @markers = [{
      lat: @boat.latitude,
      lng: @boat.longitude
      # info_window: render_to_string(partial: "info_window", locals: {boat: @boat})
      # image_url: helpers.asset_url("REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS")
    }]
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
    @boat.status = "accepted"
    @boat.user = current_user

    if @boat.save
      redirect_to boat_path(@boat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @boat = Boat.find(params[:id])
    @boat.user = current_user
  end

  def update
    @boat = Boat.find(params[:id])
    @boat.update(boat_params)
    redirect_to boat_path(@boat)
  end

  def destroy
    @boat = Boat.find(params[:id])
    @boat.destroy
    redirect_to boats_path(@boats), status: :see_other
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :description, :category, :size, :capacity, :address, :price, :photo)
  end
end
