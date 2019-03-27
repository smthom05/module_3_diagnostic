class Station
  attr_reader :name,
              :address,
              :fuel_type,
              :distance

  def initialize(station_data)
    @name = station_data['station_name']
    @address = station_data['street_address']
    @fuel_type = station_data['feul_type_code']
    @distance = station_data['distance']
  end

end
