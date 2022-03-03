class SearchController < ApplicationController
  def index
    wildcard_search = "%#{params[:keywords]}%"

    if params[:dropdown_selection] == "anime"
      @searches = Anime.where("name LIKE ?", wildcard_search)
    elsif params[:dropdown_selection] == "manga"
      @searches = Anime.where("name LIKE ?", wildcard_search)
    elsif params[:dropdown_selection] == "genre"
      @searches = Genre.where("name LIKE ?", wildcard_search)
    elsif params[:dropdown_selection] == "studio"
      @searches = Studio.where("name LIKE ?", wildcard_search)
    elsif params[:dropdown_selection] == "producer"
      @searches = Producer.where("name LIKE ?", wildcard_search)
    end
  end
end
