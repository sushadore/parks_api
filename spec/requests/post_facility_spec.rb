require 'rails_helper'

describe "post quote route", type: :request do

  before do
    park = Park.create(name: "Jellystone", category: "National Park", location: "POTUS's backyard", id: 1)
    post "/parks/#{park.id}/facilities", params: { amenity: "Trees", description: "Palmtrees of Joy", park_id: 1 }
  end

  it "returns facility amenity" do
    expect(Facility.first.amenity).to eq "Trees"
  end

  it "returns facility description" do
    expect(Facility.first.description).to eq "Palmtrees of Joy"
  end

  it "returns created status" do
    expect(response).to have_http_status 201
  end
end
