require 'rails_helper'

describe "delete facility route", type: :request do

  before do
    park = Park.create(name: "Donutland", category: "National Donument", location: "In mah belly!", id: 1)
    facilities = FactoryGirl.create(:facility)
    delete "/parks/#{park.id}/facilities/#{facilities.id}"
  end

  it "destroys facility" do
    expect(response).to have_http_status 204
  end
end
