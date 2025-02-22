class SearchController < ApplicationController
  def index
    @query = params[:query]
    @results = Ad.where("title ILIKE ? OR description ILIKE ?", "%#{@query}%", "%#{@query}%") if @query.present?
  end
end
