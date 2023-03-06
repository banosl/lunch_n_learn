require 'rails_helper'

RSpec.describe PlacesService do
  before :each do
    load_stubs
  end
  describe "#get_tourist_sights_of_capital" do
    it "returns a json response of lists of tourist spots for a given capital's coordinates" do
      coordinates = "-99.13,19.43"

      tourist_sights = PlacesService.get_tourist_sights_of_capital(coordinates)

      binding.pry
      expect(tourist_sights).to be_a(Hash)
    end
  end
end