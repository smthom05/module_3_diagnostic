class SearchController < ApplicationController
  def index
    render locals: {
      facade: SearchFacade.new(ENV['NREL_API_KEY'])
    }
  end


end
