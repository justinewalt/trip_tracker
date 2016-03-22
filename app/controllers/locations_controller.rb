class LocationController < ApplicationController
  def index
  	@trip = Trip.find(params[:trip_id])
  	@location = @trip.locations
  end

  def show
  end

  def edit
  end

  def new
  	@trip = Trip.find(params[:trip_id])
  	@location = Location.new
  end

  def create
  	@trip = Trip.find(params[:trip_id])
  	@trip.locations.create(location_params)
  	redirect_to trip_locations_path(@trip)
  end

  private
  	def location_params
  		params.require(:location).permit(:name, :location_id)
  	end
end
