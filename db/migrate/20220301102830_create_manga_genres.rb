class CreateMangaGenres < ActiveRecord::Migration[7.0]
  def change
    create_table :manga_genres do |t|
      t.references :manga, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
