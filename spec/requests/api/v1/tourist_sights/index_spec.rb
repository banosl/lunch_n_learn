require 'rails_helper'

RSpec.describe "Tourist Sights Index" do
  describe "get /api/v1/tourist_sights? for a given country" do
    it "returns a json of all the the tourist sights in a given countrys capital within a circle radius" do
      country = "Mexico"
      get "/api/v1/tourist_sights?country=#{country}"

      expect(response).to be_successful
      expect(response.status).to eq(200)
    end
  end
end