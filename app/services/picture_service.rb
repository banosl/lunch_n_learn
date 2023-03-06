class PictureService
  def self.conn
    Faraday.new(url: "https://api.unsplash.com/",
                params: {client_id: ENV['unsplash_api']},
                headers: {Accept_Version: 'v1'}
                )
  end

  def self.json_parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end


  def self.get_pictures_for_country(country)
    response = conn.get("search/photos", {query: country})
    json_parse(response)
  end
end