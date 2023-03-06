require "rails_helper"

RSpec.describe RecipesService do
  before :each do
    load_stubs
  end

  describe '#get_recipes_by_country' do
    it "returns json with a list of recipes from the country queried" do
      country = "Mexico"

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