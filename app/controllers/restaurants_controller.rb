class RestaurantsController < ApplicationController
    before_action :set_restaurant, only: [:show, :edit, :update,:destroy]

  def index
    @restaurants = Restaurant.all
  end
  def show
  end
  def new
    @restaurant = Restaurant.new
  end
  def create
    Restaurant.create(restaurant_params)
    redirect_to restaurants_path
  end
  def edit
  end
  def update
    Restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)        # to redirect to the ID page, dynamic link
  end
  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private
  # To filter hacking forms
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
