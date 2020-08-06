require 'rails_helper'

RSpec.describe Movie, type: :model do
  it "is invalid without a title" do
    movie = Movie.new(title: nil)
    expect(movie).to be_invalid
  end

  it "does not allow duplicate titles" do
    movie = Movie.create(
      title: "Test",
      director: "Test",
      rating: 5
    )
    new_movie = Movie.new(
      title: "Test",
      director: "Test",
      rating: 5
    )
    new_movie.valid?
    expect(new_movie.errors[:title]).to include("has already been taken")
  end

  it "is invalid without a director" do
    movie = Movie.new(title: "Test title", director: nil)
    expect(movie).to be_invalid
  end

  it "is invalid without a rating" do
    movie = Movie.new(
      title: "Test title",
      director: "Test",
      rating: nil
    )
    expect(movie).to be_invalid
  end
  it "returns rating as a float" do
    movie = Movie.new(
      title: "Test title",
      director: "Test",
      rating: 5.5
    )
    expect(movie.rating).to eq(5.5)
  end

  it "returns year as a string" do
    movie = Movie.new(
      title: "Test title",
      director: "Test",
      rating: 5,
      year: "2020"
    )
    expect(movie.year).to eq("2020")
  end

end
