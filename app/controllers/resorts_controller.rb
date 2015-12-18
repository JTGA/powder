class ResortsController < ApplicationController
  include HTTParty

  def index
    @bg = "resorts-bg"
  end

  def show
    @bg = "resort-bg"
    response = HTTParty.get('http://liftie.info/api/resort/' + params[:id])
    @resort = JSON.parse(response.body)

    @twitter = @resort["twitter"]["tweets"][0]["text"]
    @twitter.gsub! 'http', '<a target="_blank" href="http'
    @twitter += '">Click Link</a>'
  end
end
