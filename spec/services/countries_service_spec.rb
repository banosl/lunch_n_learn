require 'rails_helper'

RSpec.describe CountriesService do
  before :each do
    load_stubs
  end
  describe "#get_all_countries" do
    it 'returns a response with all countries with their name, flag, capital, and capital cooridnates' do
      response = CountriesService.get_all_countries

      expect(response).to be_a(Array)

      response.each do |country|
        expect(country).to have_key(:name)
        expect(country[:name]).to have_key(:common)
        expect(country[:name]).to have_key(:official)
        expect(country).to have_key(:flag)
        expect(country).to have_key(:capital)
        expect(country).to have_key(:capitalInfo)
        expect(country[:capitalInfo]).to have_key(:latlng)
      end
    end
  end

  describe "get_one_country" do
    it "returns a response with the name, flag, capital, and capital coordinates for a given country" do
      country = "Mexico"
      response = CountriesService.get_one_country(country)

      expect(response).to be_a(Array)

      response.each do |country|
        expect(country).to have_key(:name)
        expect(country[:name]).to have_key(:common)
        expect(country[:name]).to have_key(:official)
        expect(country).to have_key(:flag)
        expect(country).to have_key(:capital)
        expect(country).to have_key(:capitalInfo)
        expect(country[:capitalInfo]).to have_key(:latlng)
      end
    end
  end
end