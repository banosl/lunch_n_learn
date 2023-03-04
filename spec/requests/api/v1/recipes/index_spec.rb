require 'rails_helper'

RSpec.describe "GET recipes" do
  it "can return recipes when given a country" do
    country = "Thailand"
    get "/api/v1/recipes?#{country}"

    expect(response).to be_successful
    expect(response.status).to eq(200)
  end

  it "can return recipes for a random country when not given a country query"

  it "can return an empty data array when there are no results"
end