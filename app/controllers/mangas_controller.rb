class MangasController < ApplicationController
  def index
    @mangas = Manga.order("score DESC").page(params[:page])
  end

  def show
    @manga = Manga.find(params[:id])
  end
end
