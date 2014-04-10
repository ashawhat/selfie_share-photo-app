require 'spec_helper'

describe User do
  before :each do
    FactoryGirl.create(:user)
  end
  it { should have_many :albums }
  it { should validate_presence_of :name }
  it { should validate_presence_of :email }

  it { should validate_uniqueness_of :email }

end
