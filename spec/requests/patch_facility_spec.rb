require 'rails_helper'

describe "patch facility route", type: :request do

  before do
    park = Park.create(name: "Happy Joy Joy", category: "State Pate", location: "Under the doormat", id: 1)
    facilities = FactoryGirl.create(:facility)
    patch "/parks/#{park.id}/facilities/#{facilities.id}",
    params: { description: "A really really really really fun time!" }
  end

  it "returns updated message" do
    expect(JSON.parse(response.body)["message"]).to eq "Facility has been updated."
  end

  it "returns ok status" do
    expect(response.status).to eq 200
  end
end
