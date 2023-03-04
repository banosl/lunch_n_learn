require "rails_helper"

RSpec.describe RecipesService do
  describe '#get_recipes_by_country' do
    it "returns json with a list of recipes from the country queried" do
      country = "Mexico"
      response = RecipesService.get_recipes_by_country(country)

      expect(response).to be(Hash)
    end
  end
end