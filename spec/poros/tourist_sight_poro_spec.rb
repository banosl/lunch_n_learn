require 'rails_helper'

RSpec.describe TouristSight do
  it "Tourist Sight exists and has attributes" do
    data = {properties: {name: "library", address: "123 St, Anchorage, AK", place_id: "12345"}}
    tourist_sight = TouristSight.new(data)

    expect(tourist_sight).to be_instance_of(TouristSight)
    expect(tourist_sight.name).to eq("library")
    expect(tourist_sight.address).to eq("123 St, Anchorage, AK")
    expect(tourist_sight.place_id).to eq("12345")
  end
end