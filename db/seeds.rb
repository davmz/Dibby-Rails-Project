# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "csv"

Anime.delete_all
Type.delete_all

filename = Rails.root.join("db/dataanime.csv")
puts "Loading Anime the CSV file: #{filename}"

csv_data = File.read(filename)
animes = CSV.parse(csv_data, headers:true, encoding: "utf-8")

animes.each do | a |
  type = Type.find_or_create_by(name: a["Type"])

  if type && type.valid?

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

    puts "Invalid anime #{a["Title"]}" unless anime.valid?
  else
    puts "Invalid TYPE #{a["Type"]} for anime #{a["Title"]}."
  end
end

puts "Created #{Type.count} Types"
puts "Created #{Anime.count} Animes"