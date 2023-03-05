require 'rails_helper'

RSpec.describe "GET recipes" do
  before :each do
    load_stubs
  end

  it "can return recipes when given a country" do
    country = "Mexico"
    get "/api/v1/recipes?country=#{country}"
    
    binding.pry
    expect(response).to be_successful
    expect(response.status).to eq(200)
  end

  it "can return recipes for a random country when not given a country query"

  it "can return an empty data array when there are no results"
end