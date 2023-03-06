class CountriesFacade
  def self.random_country_name
    countries = CountriesService.get_all_countries
    country = countries.sample
    country[:name][:common]
  end
end