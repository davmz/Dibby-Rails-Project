class ProducersController < ApplicationController
  def index
    @producers = Producer.all.page(params[:page])
  end

  def show
    @producer = Producer.find(params[:id])

    @anime_producer = AnimeProducer.where(producer_id: params[:id])
  end
end
