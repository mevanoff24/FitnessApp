class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :date
      t.string :author
      t.string :tag
      t.string :content

      t.timestamps null: false
    end
  end
end
