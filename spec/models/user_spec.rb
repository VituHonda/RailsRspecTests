require 'rails_helper'
require 'spec_helper.rb'
require 'user'
require 'faker'

RSpec.describe User, type: :model do

  let(:random) {Faker::Name.name}

  it "is valid if the level is not between 1 and 99" do
    expect(User.create(nickname: 'Chronos Mage', kind: :knight, level: 100)).to_not be_valid
  end

  it "returns the correct hero title" do
    user = User.create(nickname: 'Chronos', kind: :wizard, level: 1)
    expect(user.title).to eq('wizard Chronos #1')
  end

  it "testing random name with faker" do
    user = User.create(nickname: random, kind: :wizard, level: 60)
    expect(user.level).to eq(60)
  end

end
