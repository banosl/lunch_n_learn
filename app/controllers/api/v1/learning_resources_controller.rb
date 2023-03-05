class Api::V1::LearningResourcesController < ApplicationController
  def index
    country = params[:country]
    video = YouTubeFacade.one_video_for_country(country)
binding.pry
  end
end