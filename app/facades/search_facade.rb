class SearchFacade
  attr_reader :key

  def initialize(key)
    @key = key
  end

  def stations
    response = service.get_stations
    response.map do |response_data|
      Stations.new(response_data)
    end
  end

  def service
    NrelService.new(@key)
  end

end
