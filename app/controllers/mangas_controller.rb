class MangasController < ApplicationController
  def index
    @mangas = Manga.order("score DESC")
  end

  def show

  end
end
