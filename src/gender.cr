struct Gender
  def self.female
    new("Female", {"she", "her", "her", "hers"})
  end

  def self.male
    new("Male", {"he", "him", "his", "his"})
  end

  def self.nonbinary
    new("Non-Binary", {"they", "them", "their", "theirs"})
  end

  def self.unknown
    new("Unknown", {"it", "it", "its", "its"})
  end

  getter name : String
  private getter pronouns : Tuple(String, String, String, String)

  def initialize(@name, @pronouns)
  end

  def subjective
    pronouns[0]
  end

  def objective
    pronouns[1]
  end

  def posessive
    pronouns[2]
  end

  def plural_possessive
    pronouns[3]
  end
end
