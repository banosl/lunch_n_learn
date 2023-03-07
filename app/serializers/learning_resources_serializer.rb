class LearningResourcesSerializer
  def self.format_video_and_pictures(country, video, pictures)
    {
      "data": {
        "id": nil,
        "type": "learning_resource",
        "attributes": {
          "country": country,
          "video": format_video(video),
          "images": pictures.each do |picture| 
            {
              "alt_tag": picture.alt_tag,
              "url": picture.url
            }
          end
        }
      }
    }
  end

  def self.format_video(video)
    unless video.nil?
      {
        "title": video.title,
        "youtube_video_id": video.video_id
      }
    else
      {}
    end
  end
end