require 'rails_helper'

RSpec.describe Recipe do
  it "recipe exists and has attributes" do
    country = "USA"
    data = {recipe: {label: "Good Food", url: "https://apple_pie.com", image: "image goes here"}}
    recipe = Recipe.new(data, country)

    expect(recipe).to be_instance_of(Recipe)
    expect(recipe.name).to eq("Good Food")
    expect(recipe.url).to eq("https://apple_pie.com")
    expect(recipe.image).to eq("image goes here")
    expect(recipe.country).to eq(country)
  end
end