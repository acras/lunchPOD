class HomeController < ApplicationController
  def index
    redirect_to food_picture_url(FoodPicture.last) 
  end
end
