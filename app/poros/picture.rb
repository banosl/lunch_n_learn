class Picture
  attr_reader :alt_tag,
              :url
  def initialize(data)
    @alt_tag = data[:picture][:alt_description]
    @url = data[:picture][:url]
  end
end