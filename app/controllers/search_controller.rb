class SearchController < ApplicationController
    def index
        if params[:query].present?
          @toolkits = Toolkit.search(params[:query])
        else
          @toolkits = nil
        end
    end
end
