class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path(@restaurant)
    else
      render :edit
    end
  end
end
