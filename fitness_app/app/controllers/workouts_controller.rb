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
		@user_workout = User.find_by(uid: params[:uid]).workouts.new
		@user = User.find_by(uid: params[:uid])
		@workout = Workout.all
	end

	def create
		p params
		@user_workout = User.find_by(uid: params[:uid]).workouts.new(title: params[:workouts][:title], description: params[:workouts][:description])
		@user_workout.save!
		redirect_to articles_path
	end

	def edit
		@user_workout = User.find_by(uid: params[:uid]).workouts.find(params[:id])
		@user = User.find_by(uid: params[:uid])

	end

	def update
		@user_workout = User.find_by(uid: params[:uid]).workouts.update(title: params[:workouts][:title], description: params[:workouts][:description])
		redirect_to articles_path
	end
end
