class Api::V1::MoviesController < Api::V1::BaseController
  before_action :set_movie, only: [:show]

  def index
    @movies = Movie.all
    render json: @movies
  end

  def show
    render json: @movie
  end

  # query director, movie title, rating and year
  def search
    @movies = Movie.search_by_query(params[:query])
    render json: @movies
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end
end
