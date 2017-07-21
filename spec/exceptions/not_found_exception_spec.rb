require 'rails_helper'

describe "get exception route", type: :request do

  before do
    park = FactoryGirl.create(:park)
    get "/parks/7"
  end

  it "returns error message" do
    expect(JSON.parse(response.body)["message"]).to eq "Couldn't find Park with 'id'=7"
  end
end
