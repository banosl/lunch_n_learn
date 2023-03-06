class TouristSightsFacade
  def self.sights_for_country_capital(country)
    capital_info = CountriesService.get_one_country(country)
    coordinates = capital_info[0][:capitalInfo][:latlng].rotate.join(",")
    capital_sights = PlacesService.get_tourist_sights_of_capital(coordinates)
    
    capital_sights[:features].map do |sight|
      TouristSight.new(sight)
    end
  end
end