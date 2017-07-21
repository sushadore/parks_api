require 'rails_helper'

describe Facility do
  it { should belong_to :park }
  it { should validate_presence_of :type }
  it { should validate_presence_of :description }
end
