class SeriesController < ApplicationController
  load_and_authorize_resource

  def index
  end

  def show
    @grid = FilingsGrid.new(params[:filings_grid])
  end
end
