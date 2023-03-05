require "rails_helper"

RSpec.describe RecipesService do
  describe '#get_recipes_by_country' do
    it "returns json with a list of recipes from the country queried" do
      country = "Mexico"

      stub_request(:get, "https://api.edamam.com/api/recipes/v2?app_id=979855b9&app_key=29f347f65a3d8f279cd071f1f01a3096&q=Mexico&type=public").
      with(
        headers: {
        'Accept'=>'*/*',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'Content-Type'=>'application/json',
        'User-Agent'=>'Faraday v2.7.4'
        }).
      to_return(status: 200, body: File.read("spec/fixtures/recipes_mexico.json"))

      response = RecipesService.get_recipes_by_country(country)

      expect(response).to be_a(Hash)
      expect(response[:hits]).to be_a(Array)

      response[:hits].each do |hit|
        expect(hit).to be_a(Hash)
        expect(hit).to have_key(:recipe)
        expect(hit[:recipe]).to have_key(:url)
        expect(hit[:recipe]).to have_key(:images)
        expect(hit[:recipe]).to have_key(:label)
      end
    end
  end
end