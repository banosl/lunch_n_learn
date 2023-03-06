class RecipesService
  def self.conn
    Faraday.new(url: "https://api.edamam.com/api/",
                params: {app_id: ENV["app_id"], app_key: ENV["app_key"]},
                headers: {'Content-Type' => 'application/json'})
  end

  def self.json_parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_recipes_by_country(country)
    response = conn.get('recipes/v2', {type: "public", q: country})
    json_parse(response)
  end
end