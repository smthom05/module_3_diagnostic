require 'rails_helper'

describe 'SearchFacade' do
  it 'exists' do
    location = '80206'
    sf = SearchFacade.new(location)

    expect(sf).to be_a(SearchFacade)
  end

  describe 'instance methods' do
    it 'stations' do
      location = '80206'
      sf = SearchFacade.new(location)

      sf.stations
    end
  end

end
