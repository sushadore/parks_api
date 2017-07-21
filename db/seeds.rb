Movie.destroy_all
Quote.destroy_all

25.times do |index|
  movie = Movie.create!(title: Faker::Book.title, genre: Faker::HowIMetYourMother.high_five)
  n = Faker::Number.between(1, 5)
    n.times do |index|
      movie.quotes.create!(character: Faker::Hipster.sentence(2, false, 0), content: Faker::TheFreshPrinceOfBelAir.quote)
    end
end
