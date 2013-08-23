class LocationsController < ApplicationController
	def new
		@location = Location.new
	end

	def show
		@location = Location.all
	end
end
