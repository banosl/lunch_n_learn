require 'rails_helper'

RSpec.describe RecipesFacade do
  before :each do
    load_stubs
  end

  describe 'recipes_by_country' do
    it "returns recipes by country query. Only specific values" do
      country = "Mexico"
      recipes = RecipesFacade.recipes_by_country(country)

      recipes.each do |recipe|
        expect(recipe[:recipe]).to have_key(:url)
        expect(recipe[:recipe]).to have_key(:name)
        expect(recipe[:recipe]).to have_key(:image)
        expect(recipe[:recipe]).to have_key(:country)
        expect(recipe[:recipe]).to_not have_key(:images)
        expect(recipe[:recipe]).to_not have_key(:source)
        expect(recipe[:recipe]).to_not have_key(:yield)
        expect(recipe[:recipe]).to_not have_key(:dietLabels)
        expect(recipe[:recipe]).to_not have_key(:healthLabels)
        expect(recipe[:recipe]).to_not have_key(:cautions)
        expect(recipe[:recipe]).to_not have_key(:ingredientLines)
        expect(recipe[:recipe]).to_not have_key(:ingredients)
        expect(recipe[:recipe]).to_not have_key(:calories)
      end
    end
  end
end