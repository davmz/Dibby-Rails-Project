class SearchController < ApplicationController
  def index
    wildcard_search = "%#{params[:keywords]}%"

    if params[:dropdown_selection] == "Anime"
      @searches = Anime.where("name LIKE ?", wildcard_search)
    elsif params[:dropdown_selection] == "Manga"
      @searches = Anime.where("name LIKE ?", wildcard_search)
    elsif params[:dropdown_selection] == "Genre"
      @searches = Genre.where("name LIKE ?", wildcard_search)
    elsif params[:dropdown_selection] == "Studio"
      @searches = Studio.where("name LIKE ?", wildcard_search)
    elsif params[:dropdown_selection] == "Producer"
      @searches = Producer.where("name LIKE ?", wildcard_search)
    end
  end
end
