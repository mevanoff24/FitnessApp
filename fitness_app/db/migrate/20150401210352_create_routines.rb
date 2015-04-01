class CreateRoutines < ActiveRecord::Migration
  def change
    create_table :routines do |t|
    	t.string :name
      t.text :rep
      t.text :weight
      t.references :workout

      t.timestamps null: false
    end
  end
end
