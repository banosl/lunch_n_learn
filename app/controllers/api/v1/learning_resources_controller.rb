class Api::V1::LearningResourcesController < ApplicationController
  def index
    country = params[:country]
    video = YouTubeFacade.one_video_for_country(country)
    pictures = PicturesFacade.pictures_for_country(country)

    render json: LearningResourcesSerializer.format_video_and_pictures(country, video, pictures), status: 200
  end
end