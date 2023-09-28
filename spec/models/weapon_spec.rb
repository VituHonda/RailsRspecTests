require 'rails_helper'
require 'spec_helper.rb'

RSpec.describe Weapon, type: :model do

  let(:weapon) {build :weapon}

  it "is level one" do
    expect(weapon.level).to eq(1)
  end

  it "is not level one" do
    weapon.give_xp(350)
    weapon.up
    expect(weapon.level).to_not eq(1)
  end


end
