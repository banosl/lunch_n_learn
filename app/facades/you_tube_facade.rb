class YouTubeFacade
  def self.one_video_for_country(country)
    videos = YouTubeService.get_videos_on_country(country)
    video = videos[:items][0]
    unless video.nil?
      Video.new(video)
    end
  end
end