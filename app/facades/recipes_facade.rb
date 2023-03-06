class RecipesFacade
  def self.recipes_by_country(country)
    response = RecipesService.get_recipes_by_country(country)
    unless response == {:data => []}
      recipes = response[:hits].map do |recipe|
        Recipe.new(recipe, country)
      end
    end
  end
end