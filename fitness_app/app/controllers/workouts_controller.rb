class WorkoutsController < ApplicationController

	def index
		@user_workouts = User.find_by(uid: params[:uid]).workouts
	end

	def show
		
	end
	
	def new
		@user = User.find_by(uid: params[:uid])
		@workout = Workout.all
	end

	def create
		p params
		user_workout = User.find_by(uid: params[:uid]).workouts.new(title: params[:workouts][:title], description: params[:workouts][:description], exercise: params[:workouts][:exercise], sets: params[:workouts][:sets], reps: params[:workouts][:reps], weight: params[:workouts][:weight])
		# new_workout = Workout.new(title: params[:title], description: params[:description])
		user_workout.save!
		redirect_to articles_path
	end
end
