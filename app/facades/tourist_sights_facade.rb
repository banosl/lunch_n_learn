class TouristSightsFacade
  def self.sights_for_country_capital(country)
    capital_info = CountriesService.get_one_country(country)
    coordinates = capital_info[0][:capitalInfo][:latlng].rotate.join(",")
    capital_sights = PlacesService.get_tourist_sights_of_capital(coordinates)
    
    {
      country: capital_info[0][:name],
      capital_city: capital_info[0][:capital][0],
      sights: capital_sights[:features].map do |sight|
        {
          name: sight[:properties][:name],
          address: sight[:properties][:formatted],
          place_id: sight[:properties][:place_id]
        }
      end
      }
  end
end