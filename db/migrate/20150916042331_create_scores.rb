class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :time
      t.references :user, index: true, foreign_key: true
      t.references :board, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
