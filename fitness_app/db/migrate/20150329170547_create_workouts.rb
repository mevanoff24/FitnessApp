class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :title
      t.string :description
      t.references :user
      t.references :exercise

      t.timestamps null: false
    end
  end
end
