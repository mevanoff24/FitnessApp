class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name_href
      t.string :name
      t.string :muscle_targeted_href
      t.string :muscle_targeted
      t.text :reps
      t.text :weight
      t.integer :rating
      t.string :image_src
      t.string :image_href
      t.string :image
      t.references :routine

      t.timestamps null: false
    end
  end
end
