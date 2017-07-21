require 'rails_helper'

describe "delete park route", type: :request do

  before do
    park = FactoryGirl.create(:park)
    delete "/parks/#{park.id}"
  end

  it "destroys park" do
    expect(response).to have_http_status 200
  end
end
