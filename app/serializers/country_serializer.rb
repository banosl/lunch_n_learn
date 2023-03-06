class CountrySerializer
  def self.format_capital_sights(sights)
    {
      "data": sights[:sights].map do |sight|
        {
          "id": nil,
          "type": "tourist_sight",
          "attributes": {
            "name": sight[:name],
            "address": sight[:address],
            "place_id": sight[:place_id]
          }
        }
      end
    }
  end
end