struct Battle::Action::Attack < Battle::Action
  enum Result
    HIT
    MISS
  end

  target : Battle::Battler

  def initialize(battle, actor, @target)
    super(battle, actor)
  end
end
