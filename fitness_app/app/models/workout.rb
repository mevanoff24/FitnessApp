class Workout < ActiveRecord::Base
	has_many :routines
	belongs_to :user
end
