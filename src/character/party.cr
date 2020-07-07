class Character::Party
  getter name : String

  def initialize(@name, @characters : Array(Character))
  end

  def to_battle_team(battle : Battle)
    team = Battle::Team.new(name, battle).tap do |team|
      @characters.each { |c| team.add(c) }
    end
  end
end
