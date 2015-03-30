class WorkoutsController < ApplicationController

	def index

	end

	def show
		
	end
	
	def new
		@workout = Workout.all
	end
end
