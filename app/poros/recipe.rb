class Recipe
  attr_reader :name, :url, :image, :country
  def initialize(data, country)
    @name = data[:recipe][:label]
    @url = data[:recipe][:url]
    @image = data[:recipe][:image]
    @country = country
  end
end