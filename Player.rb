class Player
  attr_reader :id
  attr_reader :life

  def initialize(id)
    @id = id
    @life = 3
  end

  def lose_a_life
    @life -= 1
  end
end