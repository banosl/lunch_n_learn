class YouTubeService
  def self.conn
    Faraday.new(url: "https://youtube.googleapis.com/youtube/v3/",
      params: {part: "snippet", channelId: "UCluQ5yInbeAkkeCndNnUhpw", key: ENV['GOOGLE_API'], type: "video"},
      headers: {'Content-Type' => 'application/json'})
  end

  def self.json_parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_video_on_country(country)
    response = conn.get("search", {q: country})
    json_parse(response)
  end
end