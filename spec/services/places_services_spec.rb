require 'rails_helper'

RSpec.describe PlacesService do
  before :each do
    load_stubs
  end
  describe "#get_tourist_sights_of_capital" do
    it "returns a json response of lists of tourist spots for a given capital's coordinates" do
      coordinates = "-99.13,19.43"

      tourist_sights = PlacesService.get_tourist_sights_of_capital(coordinates)

      expect(tourist_sights).to be_a(Hash)
      tourist_sights[:features].each do |tourist_sight|
        expect(tourist_sight[:properties]).to have_key(:name)
        expect(tourist_sight[:properties][:name]).to be_a(String)
        expect(tourist_sight[:properties]).to have_key(:country)
        expect(tourist_sight[:properties][:country]).to be_a(String)
        expect(tourist_sight[:properties]).to have_key(:city)
        expect(tourist_sight[:properties][:city]).to be_a(String)
        expect(tourist_sight[:properties]).to have_key(:formatted)
        expect(tourist_sight[:properties][:formatted]).to be_a(String)
        expect(tourist_sight[:properties]).to have_key(:place_id)
        expect(tourist_sight[:properties][:place_id]).to be_a(String)
      end
    end
  end
end