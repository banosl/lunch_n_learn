require 'rails_helper'

RSpec.describe Picture do
  it "picture exists and has attributes" do
    country = "USA"
    data = {recipe: {label: "Good Food", url: "https://apple_pie.com", image: "image goes here"}}
    picture = Picture.new(data, country)

    expect(picture).to be_instance_of(Picture)
    expect(picture.name).to eq("Good Food")
    expect(picture.url).to eq("https://apple_pie.com")
    expect(picture.image).to eq("image goes here")
    expect(picture.country).to eq(country)
  end
end