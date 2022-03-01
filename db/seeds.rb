# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "csv"

## Delete Model Tables
AnimeGenre.delete_all
Genre.delete_all

Anime.delete_all
Type.delete_all

Manga.delete_all
MediaType.delete_all

## Set up CSV file to extract the data
anime_filename = Rails.root.join("db/dataanime.csv")
puts "Loading Anime the CSV file: #{anime_filename}"

anime_csv_data = File.read(anime_filename)
animes = CSV.parse(anime_csv_data, headers:true, encoding: "utf-8")

manga_filename = Rails.root.join("db/datamanga.csv")
puts "Loading Manga the CSV file: #{manga_filename}"

manga_csv_data = File.read(manga_filename)
mangas = CSV.parse(manga_csv_data, headers:true, encoding: "utf-8")

# ## Loop through the CSV to populate the models
animes.each do | a |
  type = Type.find_or_create_by(name: a["Type"])

  if type && type.valid?

    # Create our Animes Table

    anime = type.animes.create(
        name: a["Title"],
        episode: a["Episodes"],
        status: a["Status"],
        season: a["Starting season"],
        duration: a["Duration"],
        rating: a["Rating"],
        score: a["Score"],
        vote: a["Scored by"],
        description: a["Description"]
    )

    # End our Anime Creation


    unless anime.valid?
      puts "Invalid anime #{a["Title"]}"
      next
    end


    # Create our Genres Table

    genres = a["Genres"].split(",").map(&:strip)

    genres.each do | genre_name |
      genre = Genre.find_or_create_by(name: genre_name)

      AnimeGenre.create(
        anime: anime,
        genre: genre
      )
    end
    # End our Genre Creation
  else
    puts "Invalid TYPE #{a["Type"]} for anime #{a["Title"]}."
  end
end

mangas.each do | m |
  mediatype = MediaType.find_or_create_by(name: m["media_type"])

  if mediatype && mediatype.valid?

    # Create our Mangas Table

    manga = mediatype.mangas.create(
      name: m["title"],
      chapter: m["num_chapters"],
      img: m["main_picture.medium"],
      synopsis: m["synopsis"],
      popularity: m["popularity"],
      volumes: m["num_volumes"],
      status: m["status"]
    )

    # End our Manga Creation


    unless manga.valid?
      puts "Invalid manga #{m["title"]}"
      next
    end


    # Create our Genres Table



    # End our Genre Table


  else
    puts "Invalid MEDIA TYPE #{m["media_type"]} for Manga #{m["title"]}"
  end
end

## Creation Counter
puts "Created #{Type.count} Types"
puts "Created #{Anime.count} Animes"
puts "Created #{AnimeGenre.count} Anime Genres"

puts "Created #{MediaType.count} Media Types"
puts "Created #{Manga.count} Mangas"