class Api::V1::MoviesController < Api::V1::BaseController
  def index
    @movies = Movie.all
    render json: @movies
  end
end
