class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :x_pos
      t.integer :y_pos
      t.integer :width
      t.integer :height
      t.references :board, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
