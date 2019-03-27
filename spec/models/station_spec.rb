require 'rails_helper'

describe 'Station' do
  it 'exists' do
    data = {station_name: 'station'}
    station = Station.new(data)

    expect(station).to be_a(Station)
  end

  it 'it has a name attribute' do
    data = {"station_name" => 'station'} 
    station = Station.new(data)

    expect(station.name).to eq("station")
  end
end
