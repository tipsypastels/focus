class Character
  getter name : String
  getter gender : Gender

  getter max_hp  : Int16
  getter max_mp  : Int16

  getter hp : Int16
  getter mp : Int16

  getter stealth : Int16
  getter speed   : Int16

  def initialize(@name, @gender)
    @max_hp = 100
    @max_mp = 100

    @hp = @max_hp
    @mp = @max_mp

    @stealth = 50
    @speed = 50
  end
end
