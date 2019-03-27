require 'rails_helper'

describe 'Station' do
  it 'exists' do
    data = {station_name: 'station'}
    station = Station.new(data)

    expect(station).to be_a(Station)
  end

  it 'it has a name, address, type, distance attributes' do
    data = {"station_name" => 'station'}
    station = Station.new(data)

    expect(station.name).to eq("station")
    # expect(station.address).to eq("station")
    # expect(station.fuel_type).to eq("station")
    # expect(station.distance).to eq("station")
  end
end
