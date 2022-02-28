class AnimesController < ApplicationController
  def index
    # @animes = Anime.order("score DESC"); -> creates the famous n+1 problem
    @animes = Anime.includes(:type).all.order("score DESC");
  end

  def show
    @anime = Anime.find(params[:id])
  end
end
