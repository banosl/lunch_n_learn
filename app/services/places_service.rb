class PlacesService
  def self.conn
    Faraday.new(url: "https://api.geoapify.com/v2/",
                headers: {'Content-Type' => 'application/json'})
  end

  def self.json_parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_tourist_sights_of_capital(coordinates)
    response = conn.get("places", {filter: "circle:#{coordinates},20000", apiKey: ENV['places_key']})
    json_parse(response)
  end
end