class Player
  attr_accessor :name, :health
  def initialize(name, health = 60)
    @name = name
    @health = health
  end

  def attack(player)
    player.health -= 10
  end
end
