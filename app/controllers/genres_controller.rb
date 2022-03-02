class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])

    @anime_genre = AnimeGenre.where(genre_id: params[:id])
    @manga_genre = MangaGenre.where(genre_id: params[:id])
  end
end
