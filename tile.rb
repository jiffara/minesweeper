
class Tile
  attr_reader :bomb, :revealed, :flag

  def initialize
    @revealed = false
    @bomb = rand(4) == 0 ? true : false
    @flag = false
  end

  def reveal
    @revealed = true
  end

  def add_flag
    @flag = true
  end

  def remove_flag
    @flag = false
  end
end
