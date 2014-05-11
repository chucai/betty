module What
  def self.interpret(command)
    responses = []

    match = command == "what you can do"

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
