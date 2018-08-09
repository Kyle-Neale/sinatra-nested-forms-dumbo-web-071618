class Pirate
  attr_accessor :name, :weight, :height
  PIRATES = []

  def initialize(hash)
    @name = hash[:name]
    @weight = hash[:weight]
    @height = hash[:height]

    PIRATES << self

  end

  def self.all
    PIRATES
  end

end
