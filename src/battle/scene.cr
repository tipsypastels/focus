require "../ui/scene"

class Battle::Scene < UI::Scene(Battle)
  def render

  end

  private def battle
    @manager
  end
end
