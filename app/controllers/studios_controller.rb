class StudiosController < ApplicationController
  def index
    @studios = Studio.all
  end

  def show
    @studio = Studio.find(params[:id])

    @anime_studio = AnimeStudio.where(studio_id: params[:id])
  end
end
