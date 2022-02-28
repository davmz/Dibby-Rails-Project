class TypesController < ApplicationController
  def index
    # @types = Type.all
    @types = Type.ordered_by_animes
  end

  def show
    @type = Type.find(params[:id])
  end
end
