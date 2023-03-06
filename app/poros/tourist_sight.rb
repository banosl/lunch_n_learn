class TouristSight
  attr_reader :name, :address, :place_id
  def initialize(data)
    @name = data[:properties][:name]
    @address = data[:properties][:address]
    @place_id = data[:properties][:place_id]
  end
end