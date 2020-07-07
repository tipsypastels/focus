abstract struct Battle::Action
  getter battle : Battle
  getter actor  : Battle::Battler

  def initialize(@battle, @actor)
  end
end
