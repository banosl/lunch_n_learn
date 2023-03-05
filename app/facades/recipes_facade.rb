class RecipesFacade
  def self.recipes_by_country(country)
    response = RecipesService.get_recipes_by_country(country)

    recipes = response[:hits].map do |hit|
      recipe = hit[:recipe]
      {recipe: 
        {url: recipe[:url],
         name: recipe[:label], 
         image: recipe[:image], 
         country: country}
      }
    end
  end
end