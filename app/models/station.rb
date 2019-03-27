class Station
  attr_reader :name
  
  def initialize(station_data)
    @name = station_data['station_name']
  end

end
