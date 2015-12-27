require 'rails_helper'

describe User do
  # let!(:user) { User.create(name: "Jonathan Devers", email: "jonathan.devers@gmail.com", password: "annaishot", password_confirmation: "annaishot")}

  it 'has a valid factory' do
    expect(FactoryGirl.create(:user)).to be_valid
  end

  it 'has a valid password' do
    # @user = User.new(name: "Jonathan Devers", email: "jonathan.devers@gmail.com", password: "annaishot", password_confirmation: "annaishot")
    # expect(user).to be_valid
  end


end
