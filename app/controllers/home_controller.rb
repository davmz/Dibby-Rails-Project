class HomeController < ApplicationController
  def index
    @animes = Anime.includes(:type)
                    .order("score DESC")
                    .limit(30)

    @mangas = Manga.order("score DESC")
                    .limit(30)
  end
end
