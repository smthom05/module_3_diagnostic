require 'rails_helper'

describe 'SearchFacade' do
  it 'exists' do
    key = ENV['NREL_API_KEY']
    sf = SearchFacade.new(key)

    expect(sf).to be_a(SearchFacade)
  end

  describe 'instance methods' do
    it 'stations' do
      key = ENV['NREL_API_KEY']
      sf = SearchFacade.new(key)

      sf.stations
    end
  end

end
