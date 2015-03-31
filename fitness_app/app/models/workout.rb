class Workout < ActiveRecord::Base
	has_many :exercises
	belongs_to :user
	serialize :reps, Hash
	serialize :weight, Hash 
end
