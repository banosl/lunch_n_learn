require 'rails_helper'

RSpec.describe CountriesService do
  before :each do
    load_stubs
  end
  describe "#get_all_countries" do
    it 'returns a response with all countries' do
      response = CountriesService.get_all_countries

      expect(response).to be_a(Array)
      response.each do |country|
        expect(country).to have_key(:name)
        expect(country[:name]).to have_key(:common)
        expect(country[:name]).to have_key(:official)
        expect(country).to have_key(:region)
        expect(country).to have_key(:flag)
      end
    end
  end
end