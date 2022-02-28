class CreateMangas < ActiveRecord::Migration[7.0]
  def change
    create_table :mangas do |t|
      t.string :name
      t.integer :chapter
      t.string :img
      t.string :synopsis
      t.integer :popularity
      t.integer :volumes
      t.string :status
      t.references :media_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
