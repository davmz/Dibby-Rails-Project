class CreateAnimeProducers < ActiveRecord::Migration[7.0]
  def change
    create_table :anime_producers do |t|
      t.references :anime, null: false, foreign_key: true
      t.references :producer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
