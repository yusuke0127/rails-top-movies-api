require 'rails_helper'

RSpec.describe "MoviesApis", type: :request do
  describe "GET /api/v1/movies" do
    it "it loads successfully" do
      get api_v1_movies_path
      expect(response).to have_http_status(200)
    end

    it "responds with JSON formatted output" do
      get api_v1_movies_path
      expect(response.content_type).to include "application/json"
    end
  end

  describe "GET /api/v1/movies/:id" do
    it "it loads successfully" do
      movie = FactoryBot.create(:movie)
      get api_v1_movie_path(movie)
      expect(response).to have_http_status(200)
    end

    it "responds with JSON formatted output" do
      movie = FactoryBot.create(:movie)
      get api_v1_movie_path(movie)
      expect(response.content_type).to include "application/json"
    end
  end

  describe "GET /api/v1/search" do
    it "it loads successfully" do
      get api_v1_search_path("query")
      expect(response).to have_http_status(200)
    end

    it "responds with JSON formatted output" do
      get api_v1_search_path("query")
      expect(response.content_type).to include "application/json"
    end
  end
end
