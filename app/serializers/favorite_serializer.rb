class FavoriteSerializer
  def self.format_user_favorites(user_favorites)
    {
      "data": user_favorites.map do |favorite|
        {
          "id": favorite[:id],
          "type": "favorite",
          "attributes": 
          {
            "recipe_title": favorite[:recipe_title],
            "recipe_link": favorite[:recipe_link],
            "country": favorite[:country],
            "created_at": favorite[:created_at]
          }
        }
      end
    }
  end
end