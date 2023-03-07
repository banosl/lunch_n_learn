class RecipeSerializer
  def self.format_country_recipes(recipes)
      {
        "data": 
          recipes.map do |recipe|
            {
              "id": nil,
              "type": "recipe",
              "attributes":
              { 
                "title": recipe.name,
                "url": recipe.url,
                "country": recipe.country,
                "image": recipe.image
              }
            }
          end
      }
  end
end