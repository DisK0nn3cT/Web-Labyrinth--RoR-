class Labyrinth 
  
  def self.generate
    labyrinth = MarkovTextGenerator.new
    labyrinth.random(25)
  end

  def self.wheel_of_errors
    errorodds = rand(100)
  end

end
