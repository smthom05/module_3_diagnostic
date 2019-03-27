class SearchFacade
  attr_reader :location

  def initialize(location)
    @location = location
  end

  def stations
    response = service.get_stations(@location)['fuel_stations']
    response.map do |response_data|
      Station.new(response_data)
    end
  end

  def closest_stations
    
  end

  def service
    NrelService.new(ENV['NREL_API_KEY'])
  end

end
