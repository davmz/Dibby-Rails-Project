# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_03_01_073541) do
  create_table "anime_genres", force: :cascade do |t|
    t.integer "anime_id", null: false
    t.integer "genre_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["anime_id"], name: "index_anime_genres_on_anime_id"
    t.index ["genre_id"], name: "index_anime_genres_on_genre_id"
  end

  create_table "animes", force: :cascade do |t|
    t.string "name"
    t.integer "episode"
    t.string "status"
    t.string "season"
    t.string "duration"
    t.string "rating"
    t.decimal "score"
    t.integer "vote"
    t.string "description"
    t.integer "type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type_id"], name: "index_animes_on_type_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manga_genres", force: :cascade do |t|
    t.integer "manga_id", null: false
    t.integer "genre_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_id"], name: "index_manga_genres_on_genre_id"
    t.index ["manga_id"], name: "index_manga_genres_on_manga_id"
  end

  create_table "mangas", force: :cascade do |t|
    t.string "name"
    t.integer "chapter"
    t.string "img"
    t.string "synopsis"
    t.integer "popularity"
    t.integer "volumes"
    t.string "status"
    t.integer "media_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["media_type_id"], name: "index_mangas_on_media_type_id"
  end

  create_table "media_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "anime_genres", "animes"
  add_foreign_key "anime_genres", "genres"
  add_foreign_key "animes", "types"
  add_foreign_key "manga_genres", "genres"
  add_foreign_key "manga_genres", "mangas"
  add_foreign_key "mangas", "media_types"
end
