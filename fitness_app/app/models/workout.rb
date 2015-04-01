class Workout < ActiveRecord::Base
	has_many :routines
	belongs_to :user
	accepts_nested_attributes_for :routines, allow_destroy: true
end
