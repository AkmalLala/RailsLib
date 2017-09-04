class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :img
      t.text :synopsis
      t.integer :author_id
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
