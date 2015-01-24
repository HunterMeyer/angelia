class HomeController < ApplicationController

  def index
  end

  def search
    @mentions = $twitter.search(search_params[:handle]).map { |t| t.text }.join('<br>')
    @results = @mentions.present? ? @mentions.gsub('"', '\\"').gsub(/\n/, '') : 'Sorry, no results found.'
    render 'home/search_results', locals: { data: @results }
  end

  private

  def search_params
    params.require(:search).permit(:handle)
  end

end
