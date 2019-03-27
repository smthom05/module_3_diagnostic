require 'rails_helper'

describe 'nrel service' do
  it 'exists' do
    key = "key"
    nrel = NrelService.new(key)

    expect(nrel).to be_a(NrelService)
  end

  describe 'instance methods' do
    it '#stations' do
      VCR.use_cassette('nrel_stations') do
        key = ENV['NREL_API_KEY']
        nrel = NrelService.new(key)
        location = 80206

        result = nrel.get_stations(location)

        expect(result).to be_a(Hash)
        expect(result).to have_key('fuel_stations')
      end
    end
  end
end
