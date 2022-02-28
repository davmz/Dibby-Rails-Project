class CreateAnimes < ActiveRecord::Migration[7.0]
  def change
    create_table :animes do |t|
      t.string :name
      t.integer :episode
      t.string :status
      t.string :season
      t.string :duration
      t.string :rating
      t.decimal :score
      t.integer :vote
      t.string :description
      t.references :type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
