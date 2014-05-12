module What
  def self.interpret(command)
    responses = []
    regular = /(^what\s+(you\s+)?(can\s+)?do|(give\s+)?(me\s+)?(a\s+)?help)/i
    match = command.match(regular)

    if match
      responses << {
        :command => "less ~/Documents/FreeWheel/tools/betty/what_i_can_do.txt",
        :explanation => "Display the list what I can do"
      }
    end

    responses
  end
end

$executors << What
