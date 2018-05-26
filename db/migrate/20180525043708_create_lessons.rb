class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.references :category, foreign_key: true
      t.string :description
      t.text :content
      t.integer :price

      t.timestamps
    end
  end
end
