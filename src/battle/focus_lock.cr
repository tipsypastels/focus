class Battle::FocusLock
  FIXED_BREAK_PENALTY = 100

  getter on : Battle::Battler
  getter by : Battle::Battler

  private getter start_turn : Int16

  def initialize(*, @on, @by, @start_turn)
    if @on.team == @by.team
      raise ArgumentError, "Cannot Focus Lock battlers on the same team"
    end
  end

  def break
    @by.focus_history << focus_to_remove_on_break
    @by.focus_lock = nil
  end

  private def focus_to_remove_on_break
    -(FIXED_BREAK_PENALTY + focus_earned_since_lock)
  end

  private def focus_earned_since_lock
    @by.focus_history[start_turn..].sum
  end
end
