class HomeController < ApplicationController

  def index
  end

  def search
    @sentiment   = Result.new(search_params[:query]).get_sentiment
    # @results   = Result.new(search_params[:query])
    # @mentions  = @results.get_mentions
    # @names     = @results.get_screen_names
    # @locations = @results.get_locations
    render 'index', locals: { data: @mentions }
  end

  private

  def search_params
    params.require(:search).permit(:query)
  end

end
