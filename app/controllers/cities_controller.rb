class CitiesController < ApplicationController
  def index
    @response = Response.new
    result = nil
    begin
      result ||= {}
      cities = City.all
      hot_cities = []
      cities.each do |city|
        if city.is_hot
          hot_cities << city
        else
          if city.name_en && city.name_en.strip.length > 0
            index = city.name_en[0].upcase
            result[index] ||= []
            result[index] << city
          end
        end
      end
      result = Hash[result.sort.unshift(['hot', hot_cities])]
      result.each { |k, v| v.sort_by!(&:name_en) }

      @response.code = 200
      @response.message = 'success'
    rescue
      @response.code = 501
      @response.message = 'error'
    ensure
      @response.result = result
    end
  end

  def show
    @city = City.find(params[:id])
  end
end
