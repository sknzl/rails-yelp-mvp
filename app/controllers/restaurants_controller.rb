class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [ :show]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    Restaurant.create(review_params)
    redirect_to restaurants_path
  end

  def show

  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def review_params
    params.require(:restaurant).permit(:name,:address,:category,:phone_number)
  end
end
