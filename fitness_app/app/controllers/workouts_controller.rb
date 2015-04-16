class WorkoutsController < ApplicationController
	before_action :set_user, only: [:index, :show, :new, :edit]
	before_action :set_workout, only: [:edit, :destroy]

	def index
		@user_workouts = User.find_by(uid: params[:uid]).workouts
	end

	def show
		@user_workout = User.find_by(uid: params[:uid]).workouts.find(params[:id])
	end
	
	def new
	end

	def create
		p params
		user_workout = Workout.new(title: params[:workout][:title], description: params[:workout][:description], user_id: params[:user_id] )
		user_routine = Workout.new.routines.new(name: params[:workout][:routine][:name])
		user_routine.reps << params[:workout][:routine][:reps]
		user_routine.weight << params[:workout][:routine][:weight]

		user_workout.save!
		user_routine.save!
		user_routine.update(workout_id: user_workout.id)
		redirect_to user_workouts_path
	end

	def edit
		@workout = Workout.find(params[:id])
	end

	def update
		@workout = Workout.find(params[:id]).update(title: params[:workout][:title], description: params[:workout][:description])
		redirect_to user_workouts_path
	end

	def destroy
		@workout = Workout.find(params[:id])
		@workout.destroy
		redirect_to articles_path
	end

	private 
	
	def set_user
		@user = User.find_by(uid: params[:uid])
	end

	def set_workout
		@workout = Workout.find(params[:id])
	end



end
