class WorkoutsController < ApplicationController
	before_action :set_user, only: [:index, :show, :new, :edit]
	before_action :set_workout, only: [:edit, :destroy]

	def index
		@user_workouts = current_user.workouts
	end

	def show
		@user_workout = current_user.workouts.find(params[:id])
	end
	
	def new
		@workout = Workout.new
	end

	def create
		p params
		redirect_to user_workouts_path
	end

	def edit
	end

	def update
		@workout = Workout.find(params[:id])
		@workout.update(title: params[:workout][:title], description: params[:workout][:description])
		redirect_to user_workouts_path
	end

	def destroy
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
