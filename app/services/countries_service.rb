class CountriesService
  def self.conn
    Faraday.new(url: "https://restcountries.com/v3.1/",
      headers: {'Content-Type' => 'application/json'})
  end

  def self.json_parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_all_countries
    response = conn.get('all', {fields: "name,capital,capitalInfo,flag"})
    json_parse(response)
  end

  def self.get_one_country(country)
    response = conn.get("name/#{country}", {fields: "name,capital,capitalInfo,flag"})
    json_parse(response)
  end
end