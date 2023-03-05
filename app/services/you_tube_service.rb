class YouTubeService
  def self.conn
    Faraday.new(url: "https://youtube.googleapis.com/youtube/v3/search",
      params: {part: "snippet", channelId: "UCluQ5yInbeAkkeCndNnUhpw", key: ENV['GOOGLE_API']}
      headers: {'Content-Type' => 'application/json'})
  end
end