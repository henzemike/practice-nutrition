class Api::FoodsController < ApplicationController
  def index
    food_search = HTTP.get "https://api.nutritionix.com/v1_1/item?id=5898f5c6f79abfe90cf0ba45&appId=3c467af2&appKey=#{ENV['Nutrition_API_KEY']}"
    render json: food_search.parse
  end
end
