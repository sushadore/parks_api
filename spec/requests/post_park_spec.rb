require 'rails_helper'

describe "post park route", :type => :request do

  before do
    post "/parks", params: { name: "Jellystone", category: "National Park", location: "POTUS's backyard" }
  end

  it "returns park name" do
    expect(JSON.parse(response.body)["name"]).to eq("Jellystone")
  end

  it "returns park category" do
    expect(JSON.parse(response.body)["category"]).to eq("National Park")
  end

  it "returns park location" do
    expect(JSON.parse(response.body)["location"]).to eq("POTUS's backyard")
  end

  it "returns created status" do
    expect(response).to have_http_status 202
  end
end
