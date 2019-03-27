class SearchController < ApplicationController
  def index
    render locals: {
      facade = SearchFacade.new(key)
    }
  end


end
