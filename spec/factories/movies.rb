FactoryBot.define do
  factory :movie do
    title { "Test movie" }
    director { "tester" }
    year { "2020" }
    rating { 5.0 }
  end
end
