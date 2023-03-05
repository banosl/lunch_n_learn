require 'rails_helper'

RSpec.describe RecipesFacade do
  describe 'recipes_by_country' do
    it "returns recipes by country query. Only specific values" do
      country = "Mexico"
      recipes = RecipesFacade.recipes_by_country(country)
      binding.pry
      recipes
    end
  end
end