class Api::SearchesController < ApplicationController
  def show
    query = search_params[:query]
    @results = Feed.search_by_query(query)
    
    if @results.to_a.size == 0
      render json: {success: false}
    else
      render "show"
    end
  end

  private
  def search_params
    params.require(:search).permit(:query)
  end
end
