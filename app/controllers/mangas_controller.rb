class MangasController < ApplicationController
  def index
    @mangas = Manga.order("score DESC")
  end

  def show
    @manga = Manga.find(params[:id])
  end
end
