require 'rails_helper'

RSpec.describe TouristSightsFacade do
  before :each do
    load_stubs
  end
  describe "#sights_for_country_capital" do
    it "returns a country's capital and sights (name, formatted address, place_id)" do
      country = "Mexico"

      capital_sights = TouristSightsFacade.sights_for_country_capital(country)

      expect(capital_sights).to be_a(Array)

      capital_sights.each do |sight|
        expect(sight.name).to be_a(String)
        expect(sight.address).to be_a(String)
        expect(sight.place_id).to be_a(String)
      end

      expect(capital_sights[0].name).to eq("Biblioteca de México \"José Vasconcelos\"")
    end
  end
end