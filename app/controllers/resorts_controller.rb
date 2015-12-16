class ResortsController < ApplicationController
  include HTTParty

  def index
    @bg = "resorts-bg"
  end

  def show
    @bg = "resorts-bg"
    response = HTTParty.get('http://liftie.info/api/resort/' + params[:id])
    @resort = JSON.parse(response.body)
  end
end
