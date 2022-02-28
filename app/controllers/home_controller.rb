class HomeController < ApplicationController
  def index
    @animes = Anime.includes(:type)
                    .order("score DESC")
                    .limit(10)

    @types = Type.ordered_by_animes.limit(10)
  end
end
