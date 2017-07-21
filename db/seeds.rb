Park.destroy_all
Facility.destroy_all

35.times do |index|
  park = Park.create!(
  name: Faker::Pokemon.unique.name,
  category: Faker::Name.first_name,
  location: Faker::Address.unique.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state_abbr)

  n = Faker::Number.between(1, 5)

    n.times do |index|
      park.facilities.create!(
      amenity: Faker::Name.last_name,
      description: Faker::TheFreshPrinceOfBelAir.quote)
    end
end
