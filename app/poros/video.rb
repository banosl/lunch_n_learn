class Video
  attr_reader :video_id,
              :title,
              :channel
  def initialize(data)
    @video_id = data[:id][:videoId]
    @title = data[:snippet][:title]
    @channel = data[:snippet][:channelTitle]
  end
end