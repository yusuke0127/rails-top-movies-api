require 'rails_helper'

RSpec.describe Movie, type: :model do

  it "has a valid factory" do
    expect(FactoryBot.build(:movie)).to be_valid
  end

  it "is invalid without a title" do
    movie = FactoryBot.build(:movie, title: nil)
    expect(movie).to be_invalid
  end

  it "does not allow duplicate titles" do
    movie = FactoryBot.create(:movie)
    new_movie = FactoryBot.build(:movie)
    new_movie.valid?
    expect(new_movie.errors[:title]).to include("has already been taken")
  end

  it "is invalid without a director" do
    movie = FactoryBot.build(:movie, director: nil)
    expect(movie).to be_invalid
  end

  it "is invalid without a rating" do
    movie = FactoryBot.build(:movie, rating: nil)
    expect(movie).to be_invalid
  end

  it "returns rating as a float" do
    movie = FactoryBot.build(:movie)

    expect(movie.rating).to eq(5.0)
  end

  it "returns year as a string" do
    movie = FactoryBot.build(:movie)
    expect(movie.year).to eq("2020")
  end

end
