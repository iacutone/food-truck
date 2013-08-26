class LocationsController < ApplicationController
	def show
		@location = Location.recent
	end
end
