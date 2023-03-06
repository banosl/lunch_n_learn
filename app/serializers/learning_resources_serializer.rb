class LearningResourcesSerializer
  def self.format_video_and_pictures(country, video, pictures)
    {
      "data": {
        "id": {},
        "type": "learning_resource",
        "attributes": {
          "country": country,
          "video": {
            "title": video[:snippet][:title],
            "youtube_video_id": video[:id][:videoId]
            },
          "images": pictures.each do |picture| 
            {
              "alt_tag": picture[:alt_tag],
              "url": picture[:url]
            }
          end
        }
      }
    }
  end
end