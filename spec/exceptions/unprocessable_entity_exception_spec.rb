require 'rails_helper'

describe "unprocessable entry exception", type: :request do

  before do
    post "/parks", params: { name: " ", category: "National Nark", location: "Tattle Tale Falls"}
  end

  it "returns error message" do
    expect(JSON.parse(response.body)["message"]).to eq "Validation failed: Name can't be blank"
  end

  it "returns unprocessabel entity status" do
    expect(response).to have_http_status 422
  end
end
