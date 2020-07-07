class Battle::Team
  enum Distraction
    NONE
    LOW
    HIGH
  end

  getter name : String
  getter battle : Battle

  getter battlers : Array(Battle::Battler)
  getter distraction_level : Distraction

  def initialize(@name, @battle)
    @battlers = [] of Battle::Battler
    @distraction_level = Distraction::NONE
  end

  def add(character : Character)
    add(Battle::Battler.new(character, self, battle))
  end

  def add(battler : Battle::Battler)
    battlers << battler
  end

  def eligible_battlers
    @battlers.select &.eligible_for_turn?
  end

  def dead?
    valid_battlers.none?
  end
end
