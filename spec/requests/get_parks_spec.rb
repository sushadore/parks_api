require 'rails_helper'

context "get all parks route", :type => :request do
  let!(:parks) { FactoryGirl.create_list(:park, 13)}


  before { get "/parks" }

  it 'returns all parks' do
    expect(JSON.parse(response.body).size).to eq 13
  end

  it 'returns status code 200' do
    expect(response).to have_http_status :success
  end
end
