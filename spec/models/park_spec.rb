require 'rails_helper'

describe Park do
  it { should have_many :facilities }
  it { should validate_presence_of :name }
  it { should validate_presence_of :category }
  it { should validate_presence_of :location }
end
