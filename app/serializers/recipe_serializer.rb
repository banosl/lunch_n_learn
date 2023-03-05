class RecipeSerializer
  def self.format_country_recipes(recipes)
    binding.pry
    recipes.each do |recipe|
      {
        "data": 
        [
          "id":{},
          "type": "recipe",
          "attributes":
          { 
              "title": recipe[:recipe][:name],
              "url": recipe[:recipe][:url],
              "country": recipe[:recipe][:country],
              "image": recipe[:recipe][:image]
            }
        ]
      }
    end
  end
end