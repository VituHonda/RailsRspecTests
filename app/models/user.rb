class User < ApplicationRecord
  enum kind: [ :knight, :wizard]
  validates :level, numericality: {greater_than: 0, less_than_or_equal_to: 99}

  attr_accessor :nickname
  attr_accessor :kind
  attr_accessor :level

  def title
    "#{self.kind} #{self.nickname} ##{self.level}"
  end
  # def create(nickname, kind, level)
  #   self.nickname = nickname
  #   self.kind = kind
  #   self.level = level
  #   end
  def create(nickname, kind, level)
    @nickname = nickname
    @kind = kind
    @level = level
  end

end