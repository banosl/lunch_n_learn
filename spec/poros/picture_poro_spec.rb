require 'rails_helper'

RSpec.describe Picture do
  it "picture exists and has attributes" do
    data = {alt_description: "picture of a cow", urls: {full: "www.picture.com"}}
    picture = Picture.new(data)

    expect(picture).to be_instance_of(Picture)
    expect(picture.alt_tag).to eq("picture of a cow")
    expect(picture.url).to eq("www.picture.com")
  end
end