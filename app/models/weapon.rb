class Weapon < ApplicationRecord

  validates :level, numericality: {greater_than: 0, less_than_or_equal_to: 99}
  validates_presence_of :name, :pb, :ps, :description, :xp

  def power
    (self.pb + ((self.level-1) * self.ps))
  end

  def title
    "#{self.name} ##{self.level}"
  end

  def up
    temp = (xp%100)
    upar = (xp/100).to_i
    self.xp = temp

    until upar == 0 do
      self.level += 1
      upar -= 1
    end

  end

  def give_xp(xp)
    self.xp += xp
  end

end
