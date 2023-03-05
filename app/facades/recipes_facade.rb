class RecipesFacade
  def self.recipes_by_country(country)
    recipes = RecipesService.get_recipes_by_country(country)
    binding.pry
  end
end