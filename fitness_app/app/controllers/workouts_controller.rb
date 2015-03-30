class WorkoutsController < ApplicationController

	def index

	end

	def show
		
	end
	
	def new
		@workout = Workout.all
	end

	def create
		p params
		new_workout = Workout.new(title: params[:title], description: params[:description])
		new_workout.save!
		redirect_to articles_path
	end
end
