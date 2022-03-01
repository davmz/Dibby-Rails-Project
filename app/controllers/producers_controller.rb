class ProducersController < ApplicationController
  def index
    @producers = Producer.all
  end

  def show

  end
end
