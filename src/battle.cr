class Battle
  getter teams
  getter turn

  def initialize(parties : Array(Character::Party))
    @turn  = 0
    @teams = [] of Battle::Team
    @scene = Battle::Scene.new(self)

    parties.each do |party|
      @teams << party.to_battle_team(self)
    end
  end

  def start
    loop do
      battlers_this_turn.each do |battler|
        yield battler, self
      end

      @turn += 1
    end
  end

  def complete?
    @teams.any? &.all_dead?
  end

  private def battlers_this_turn
    @teams.flat_map(&.eligible_battlers)
          .sort_by(&.turn_priority)
  end
end
