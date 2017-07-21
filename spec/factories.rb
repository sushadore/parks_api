FactoryGirl.define do
  factory :park do
    name "Park name"
    category "State Park"
    location "Your mom's house"
  end

  factory :facility do
    amenity "Swimming"
    description "Your mom's bathtub"
    park_id 1
  end
end
