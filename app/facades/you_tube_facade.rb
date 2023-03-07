class YouTubeFacade
  def self.one_video_for_country(country)
    videos = YouTubeService.get_videos_on_country(country)
    binding.pry
    unless video[:items].nil?
      video = videos[:items][0]
    end
  end
end