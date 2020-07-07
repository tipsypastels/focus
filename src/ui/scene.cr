abstract class UI::Scene(T)
  def initialize(@manager : T)
  end

  abstract def render

  def update
    yield # TODO
  end
end
