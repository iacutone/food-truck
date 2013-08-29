class LocationsController < ApplicationController
	def show
		@locations = Location.recent
	end

	def about
		@trucks = Truck.all
	end
end
