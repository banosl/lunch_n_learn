require 'rails_helper'

RSpec.describe TouristSightsFacade do
  describe "#sights_for_country_capital" do
    it "returns a country's capital and sights (name, formatted address, place_id)" do
      country = "Mexico"

      capital_sights = TouristSightsFacade.sights_for_country_capital(country)

      expect(capital_sights).to be_a(Hash)
      binding.pry
    end
  end
end