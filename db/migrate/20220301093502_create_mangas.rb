class CreateMangas < ActiveRecord::Migration[7.0]
  def change
    create_table :mangas do |t|
      t.string :name
      t.string :chapter
      t.string :volume
      t.string :status
      t.decimal :score
      t.integer :popularity
      t.string :synopsis
      t.string :publish

      t.timestamps
    end
  end
end
