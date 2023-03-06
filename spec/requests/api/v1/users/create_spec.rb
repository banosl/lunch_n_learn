require 'rails_helper'

RSpec.describe "POST user" do
  describe "creating a user" do
    it "can create a user from a POST request" do
      user_body = {name: "Luca Banos Karki", email: "luca_in_denver@gmail.com"}
      headers = { "CONTENT_TYPE" => "application/json" }
      # binding.pry
      post "/api/v1/users", headers: headers, params: JSON.generate({name: "Luca Banos Karki", email: "luca_in_denver@gmail.com"})

      expect(response).to be_successful
      expect(response.status).to eq(201)
      binding.pry
    end
  end
end