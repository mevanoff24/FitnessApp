class Exercise < ActiveRecord::Base
	belongs_to :workout
	has_many :users, through: :workouts
	serialize :reps, Array
	serialize :weight, Array 
end
