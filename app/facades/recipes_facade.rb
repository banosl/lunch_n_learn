class RecipesFacade
  def self.recipes_by_country(country)
    response = RecipesService.get_recipes_by_country(country)
    unless response == {:data => []}
      recipes = response[:hits].map do |recipe|
        a = hit[:recipe]
        {recipe: 
          {url: recipe[:url],
          name: recipe[:label], 
          image: recipe[:image], 
          country: country}
        }
      end
    end
  end
end