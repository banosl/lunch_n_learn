require 'rails_helper'

RSpec.describe PictureService do
  before :each do
    load_stubs
  end
  describe "get_pictures_for_country" do
    it "returns 10 photos for a country search" do
      country = "Mexico"
      response = PictureService.get_pictures_for_country(country)

      expect(response).to be_a(Hash)
      expect(response[:results]).to be_a(Array)

      response[:results].each do |result|
        expect(result).to have_key(:alt_description)
        expect(result).to have_key(:urls)
        expect(result[:urls]).to have_key(:full)
      end
    end
  end
end