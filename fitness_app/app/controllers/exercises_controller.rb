class ExercisesController < ApplicationController

	def index
		@exercises = Exercise.all
	end

	# def show
	# 	@exercises = Exercise.where(muscle_targeted: params[:id])	
	# end

	# def muslce_targeted
	# 	@exercises = Exercise.where(muscle_targeted: "Abdominals")
	# end
	
end
