require 'rails_helper'

RSpec.describe TouristSightsFacade do
  before :each do
    load_stubs
  end
  describe "#sights_for_country_capital" do
    it "returns a country's capital and sights (name, formatted address, place_id)" do
      country = "Mexico"

      capital_sights = TouristSightsFacade.sights_for_country_capital(country)

      expect(capital_sights).to be_a(Hash)
    
      expect(capital_sights).to have_key(:country)
      expect(capital_sights).to have_key(:capital_city)
      expect(capital_sights).to have_key(:sights)

      capital_sights[:sights].each do |sight|
        expect(sight).to have_key(:name)
        expect(sight[:name]).to be_a(String)
        expect(sight).to have_key(:address)
        expect(sight[:address]).to be_a(String)
        expect(sight).to have_key(:place_id)
        expect(sight[:place_id]).to be_a(String)
      end

      expect(capital_sights[:sights][0][:name]).to eq("Biblioteca de México \"José Vasconcelos\"")
    end
  end
end