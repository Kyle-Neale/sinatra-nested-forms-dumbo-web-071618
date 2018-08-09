
class Ship
  attr_accessor :name, :type, :booty
  SHIPS = []

  def initialize(hash)
    @name = hash[:name]
    @type = hash[:type]
    @booty = hash[:booty]

    SHIPS << self

  end

  def self.all
    SHIPS
  end

  def self.clear
    SHIPS.clear
  end

end
