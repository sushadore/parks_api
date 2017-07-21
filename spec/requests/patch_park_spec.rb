require 'rails_helper'

describe "patch park route", type: :request do

  before do
    park = FactoryGirl.create(:park)
    patch "/parks/#{park.id}", params: {
      name: "Bellystone"
    }
  end

  it "returns updated name" do
    expect(Park.first.name).to eq "Bellystone"
  end

  it "updates park" do
    expect(JSON.parse(response.body)["message"]).to eq "Park has been updated."
  end

  it "returns ok status" do
         expect(response.status).to eq 200
     end


end
