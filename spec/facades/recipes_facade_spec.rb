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
        expect(recipe.country).to eq(country)
        expect(recipe.url).to be_a(String)
        expect(recipe.name).to be_a(String)
        expect(recipe.image).to be_a(String)
      end

      expect(recipes[0].url).to eq("https://food52.com/recipes/5794-avocado-from-mexico-orange-and-watercress-salad-adapted-from-chef-richard-sandoval-new-york-mexico-and-dubai")
      expect(recipes[0].name).to eq("Avocado from Mexico, Orange and Watercress Salad. Adapted from Chef Richard Sandoval, New York, Mexico and Dubai")
    end
  end
end