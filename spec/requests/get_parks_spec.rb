require 'rails_helper'

describe "get parks route", :type => :request do
  let!(:parks) { FactoryGirl.create_list(:park, 13)}

  before { get "/parks" }

  it "returns all parks" do
    expect(JSON.parse(response.body).size).to eq 13
  end

  it "returns success status" do
    expect(response).to have_http_status 200
  end
end
