class Weapon < ApplicationRecord

  # atributos
#   power_base
#   power_step
#   level
#   métodos
#   current_power - (power_base + ((level-1)*power_step))
#   title "nome_da_arma #level_da_arma "

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
