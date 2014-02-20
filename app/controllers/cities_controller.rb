class CitiesController < ApplicationController
  def index
    @result = {}
    @cities = City.all
    hot_cities = []
    @cities.each do |city|
      if city.is_hot
        hot_cities << city
      else
        if city.name_en && city.name_en.strip.length > 0
          index = city.name_en[0].upcase
          @result[index] ||= []
          @result[index] << city
        end
      end
    end
    @result = Hash[@result.sort.unshift(['hot', hot_cities])]
    # p @result
  end

  def show
    @city = City.find(params[:id])
    # render json: @city
  end
end
