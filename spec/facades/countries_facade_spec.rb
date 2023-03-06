require "rails_helper"

RSpec.describe CountriesFacade do
  before :each do
    load_stubs
  end
  describe "#self.random_country_name" do
    it "returns a random country from the responses" do
      country_name = CountriesFacade.random_country_name

      expect(country_name).to be_a(String)
    end
  end
end