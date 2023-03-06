require 'rails_helper'

RSpec.describe "get favorites from api key" do
  it "returns a json with all the favorites for the user if the api_key is valid" do
    user = User.create({name: "james", email: "james@james.com", api_key: "4b9b6a106ad0a2ced945"})
    favorite_1 = user.favorites.create({country: "Thailand", recipe_link: "https://www.thaifood.com", recipe_title: "Crab Fried Rice"})
    favorite_2 = user.favorites.create({country: "Mexico", recipe_link: "https://www.mexicanfood.com", recipe_title: "Quesadillas de Huitlacoche"})
    headers = { "CONTENT_TYPE" => "application/json" }

    get "/api/v1/favorites?api_key=#{user.api_key}"

    expect(response).to be_successful
    expect(response.status).to eq(200)
    binding.pry
  end

  it "returns an error for favorites if the api_key is not valid"

  it "returns an empty hash if the user has no favorites"
end