class NrelService
  attr_reader :api_key

  def initialize(api_key)
    @api_key = api_key
  end

  def get_stations(location)
    get_json("nearest.json?location=#{location}")
  end

  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_headers: true)
  end

  def conn
    Faraday.new(url: 'https://developer.nrel.gov/api/alt-fuel-stations/v1/') do |faraday|
      faraday.headers['X-API-KEY'] = @api_key
      faraday.adapter Faraday.default_adapter
    end
  end
end


#GET /api/alt-fuel-stations/v1/nearest.format?parameters
#https://developer.nrel.gov/api/alt-fuel-stations/v1.json?limit=1&api_key=YOUR_KEY_HERE'
