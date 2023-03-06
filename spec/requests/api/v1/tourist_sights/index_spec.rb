require 'rails_helper'

RSpec.describe "Tourist Sights Index" do
  before :each do
    load_stubs
  end
  describe "get /api/v1/tourist_sights? for a given country" do
    it "returns a json of all the the tourist sights in a given countrys capital within a circle radius" do
      country = "Mexico"
      get "/api/v1/tourist_sights?country=#{country}"
      
      expect(response).to be_successful
      expect(response.status).to eq(200)
      
      sights = JSON.parse(response.body, symbolize_names: true)
      
      expect(sights).to have_key(:data)

      sights[:data].each do |sight|
        expect(sight).to have_key(:id)
        expect(sight[:id]).to eq(nil)
        expect(sight).to have_key(:type)
        expect(sight[:type]).to eq("tourist_sight")
        expect(sight).to have_key(:attributes)

        expect(sight[:attributes]).to have_key(:name)
        expect(sight[:attributes]).to have_key(:address)
        expect(sight[:attributes]).to have_key(:place_id)
      end
    end
  end
end