class ProducersController < ApplicationController
  def index
    @producers = Producer.all
  end

  def show
    @producer = Producer.find(params[:id])
  end
end
