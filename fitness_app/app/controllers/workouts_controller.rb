class WorkoutsController < ApplicationController

	def index
		@user = User.find_by(uid: params[:uid])
		@user_workouts = User.find_by(uid: params[:uid]).workouts
	end

	def show
		@user = User.find_by(uid: params[:uid])
		@user_workout = User.find_by(uid: params[:uid]).workouts.find(params[:id])
	end
	
	def new
		@workoutt = Workout.new
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

	def edit
		@workoutt = Workout.new
		@user_workout = User.find_by(uid: params[:uid]).workouts.find(params[:id])
		@user = User.find_by(uid: params[:uid])

	end

	def update
	end
end
