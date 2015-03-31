class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :title
      t.string :description
      t.string :exercise
      t.string :sets
      t.string :reps
      t.integer :weight
      t.references :user

      t.timestamps null: false
    end
  end
end
