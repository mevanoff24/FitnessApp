class Routine < ActiveRecord::Base
	belongs_to :workout
	has_many :users, through: :workouts
	has_many :exercises
	serialize :reps, Array
	serialize :weight, Array
end
