class Video
  attr_reader :video_id,
              :title
  def initialize(data)
    @video_id = data[:items][:id][:videoId]
    @title = data[:items][:snippet][:title]
  end
end