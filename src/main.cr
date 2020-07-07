require "./**"

blackout = Character.new(
  name: "Blackout",
  gender: Gender.female,
)

klein = Character.new(
  name: "Jonathon Klein",
  gender: Gender.male,
)

beast = Character.new(
  name: "Beast of Human Sacrifice",
  gender: Gender.unknown,
)

good_guys = Character::Party.new("Good Guys", [
  blackout,
  klein,
])

bad_guys = Character::Party.new("Bad Guys", [
  beast,
])

battle = Battle.new([good_guys, bad_guys])
