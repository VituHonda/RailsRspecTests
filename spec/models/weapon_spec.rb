require 'rails_helper'
require 'spec_helper.rb'
require 'faker'

RSpec.describe Weapon, type: :model do

  let(:weapon) {build :weapon}

  it "is level one" do
    expect(weapon.level).to eq(1)
  end

  it "store extra xp" do
    weapon.give_xp(350)
    weapon.up
    expect(weapon.xp).to_not eq(0)
  end

  it "is not level one" do
    weapon.give_xp(350)
    weapon.up
    expect(weapon.level).to_not eq(1)
  end

  it "start power 100" do
    expect(weapon.power).to eq(100)
  end

  it "leveled weapon power" do
    weapon.give_xp(350)
    weapon.up
    expect(weapon.power).to_not eq(100)
  end



end
