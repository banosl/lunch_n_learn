require "rails_helper"

RSpec.describe "Create a favorite" do
  describe "user can create a favorite from a post request" do
    it "when receiving a known api_key the favorite gets added to the user" do
      user = User.create({name: "bob", email: "bob@bob.com", api_key: "6816bbb16b76946463be"})
      headers = { "CONTENT_TYPE" => "application/json" }

      post "/api/v1/favorites", headers: headers, params: JSON.generate({api_key: "6816bbb16b76946463be", country: "Thailand", recipe_link: "https://www.thaifood.com", recipe_title: "Crab Fried Rice"})
      
      expect(response).to be_successful
      expect(response.status).to eq(201)
      
      result = JSON.parse(response.body, symbolize_names: true)
      expect(result).to eq({success: "Favorite added successfully"})
      expect(user.favorites[0]).to be_instance_of(Favorite)
    end

    it "when the api_key is not known they get a message that says that user doesn't exist with a 400 level status code" do
      headers = { "CONTENT_TYPE" => "application/json" }

      post "/api/v1/favorites", headers: headers, params: JSON.generate({api_key: "b7690a0dbeb06b2bb125", country: "Mexico", recipe_link: "https://www.mexicanfood.com", recipe_title: "Quesadillas de Huitlacoche"})

      expect(response).to_not be_successful
      expect(response.status).to eq(404)

      result = JSON.parse(response.body, symbolize_names: true)
      expect(result).to eq({errors: "User not found"})
    end
  end
end