class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :title
      t.string :description
      t.string :exercise
      t.text :reps_weight
      t.references :user

      t.timestamps null: false
    end
  end
end
