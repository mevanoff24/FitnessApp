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
		@user = User.find_by(uid: params[:uid])
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
		@user = User.find_by(uid: params[:uid])
	end

	def update
		@workout = Workout.find(params[:id]).update(title: params[:workout][:title], description: params[:workout][:description])
		redirect_to user_workouts_path
	end

	def destroy
		@workout = Workout.find(params[:id])
		@workout.destroy
		redirect_to user_workouts_path
	end
end
