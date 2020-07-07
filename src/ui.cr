module UI
  def self.no_color?
    ENV.key?("NO_COLOR")
  end
end
