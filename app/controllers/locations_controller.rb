class LocationsController < ApplicationController
	def show
		@locations = Location.recent
	end
end
