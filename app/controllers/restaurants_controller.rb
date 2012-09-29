class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params[:restaurant])
    if @restaurant.save
      redirect_to restaurants_url
    else
      render action: "new"
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end





  def update

    @restaurant = Restaurant.find(params[:id])

    if @restaurant.update_attributes(params[:restaurant])
      redirect_to restaurants_path
    else
      render action: "edit"
    end
  end
end
