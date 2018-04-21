class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def new
    @city = City.new
  end

  def create
  	city = City.new(city_params)
  	if city.save
  		redirect_to cities_path(city)
  	end
  end

  def show
  	city_id = params[:id]
  	@city = City.find_by_id(city_id)
  end


private
def city_params
	params.require(:city).permit(:city_name, :photo)
end

end
