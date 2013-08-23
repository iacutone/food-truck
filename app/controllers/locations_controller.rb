class LocationsController < ApplicationController
	def show
		@location = Location.last
	end
end
