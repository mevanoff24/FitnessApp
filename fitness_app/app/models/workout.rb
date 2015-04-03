class Workout < ActiveRecord::Base
	has_many :routines, dependant: :destroy 
	belongs_to :user
	accepts_nested_attributes_for :routines, allow_destroy: true
	validates_presence_of :title
end
