require 'rails_helper'

describe "get facilities route", type: :request do

  before do
    park = Park.create(name: "Fun McGoodtimes", category: "National Bark", location: "Your mom's house", id: 1)
    facility = FactoryGirl.create(:facility)
    get "/parks/#{park.id}/facilities"
  end

  it "returns all facilities" do
    expect(JSON.parse(response.body).size).to eq 1
  end

  it "returns success status" do
    expect(response).to have_http_status 200
  end
end
