class Battle::Battler
  getter character : Character
  getter team : Battle::Team
  getter battle : Battle

  getter action_history : Array(Battle::Action)

  getter focus_history : Array(Int16)
  getter focus_lock : Battle::FocusLock?

  def initialize(@character, @team, @battle)
    @action_history = [] of Battle::Action
    @focus_history = [] of Int16
  end

  delegate hp, mp, to: character

  def eligible_for_turn?
    !dead?
  end

  def dead?
    hp == 0
  end

  def turn_priority
    focus / 100 * character.speed
  end

  def focus
    focus_history.sum
  end

  def focus_locked?
    !focus_lock.nil?
  end

  def focus_on(enemy)
    self.focus_lock = FocusLock.new(
      by: self,
      on: enemy,
      start_turn: battle.turn,
    )
  end
end
