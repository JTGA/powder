class ResortsController < ApplicationController
  include HTTParty

  def index
  end

  def show
    response = HTTParty.get('http://liftie.info/api/resort/' + params[:id])
    @resort = JSON.parse(response.body)
    puts @resort
    # @name = response.name
    # @powder = response.powder.rating
  end
end
