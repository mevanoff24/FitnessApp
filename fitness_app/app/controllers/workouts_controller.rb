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
		user_workout = Workout.new(title: params[:workout][:title], description: params[:workout][:description], user_id: params[:user_id] )
		user_workout.save!
		redirect_to articles_path
	end

	def edit
		@workout = Workout.find(params[:id])
		@user = User.find_by(uid: params[:uid])
	end

	def update
		@workout = Workout.find(params[:id]).update(title: params[:workout][:title], description: params[:workout][:description])
		redirect_to articles_path
	end

	def destroy
		@workout = Workout.find(params[:id])
		@workout.destroy
		redirect_to articles_path
	end
end
