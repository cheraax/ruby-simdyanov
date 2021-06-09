#!/usr/bin/env ruby
class Vessel
  def initialize(*equipment)
    @equipment = equipment || []
  end
  def to_s
    "vessel with: #{@equipment.join(',')}"
  end
end

class Undewater < Vessel
  def initialize(*equipment)
    @type = :undewater
    super
  end
  def to_s
    "#{@type} #{super}"
  end
end

class Overwater < Vessel
  def initialize(*equipment)
    @type = :overwater
    super
  end
  def to_s
    "#{@type} #{super}"
  end
end

# Атомную подводную лодку (ракеты, торпеды)
atomic_submarine = Undewater.new :rockets, :torpedos
puts atomic_submarine.to_s
# Сухогруз для зерна (трюм, кран)
cargo_ship = Overwater.new :crane, :cargo
puts cargo_ship.to_s
# Контейнеровоз (кран)
cargo = Overwater.new :crane
puts cargo.to_s
# Нефтяной танкер (трюм)
tanker = Overwater.new :cargo
puts tanker.to_s
# Ракетный крейсер (ракеты)
cruiser = Overwater.new :rockets
puts cruiser.to_s
# Военный корабль (ракеты, трюм, кран)
battleship = Overwater.new :rockets, :crane, :cargo
puts battleship.to_s
