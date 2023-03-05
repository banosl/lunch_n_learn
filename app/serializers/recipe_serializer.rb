class RecipeSerializer
  def self.format_country_recipes(recipes)
      {
        "data": 
          recipes.map do |recipe|
            {
              "id": {},
              "type": "recipe",
              "attributes":
              { 
                "title": recipe[:recipe][:name],
                "url": recipe[:recipe][:url],
                "country": recipe[:recipe][:country],
                "image": recipe[:recipe][:image]
              }
            }
          end
      }
  end

  def self.empty
    {
      "data": []
    }
  end
end